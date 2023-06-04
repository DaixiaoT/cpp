#include<stdio.h>
#include<windows.h>
#include <iostream>
#include <istream>
#include <streambuf>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <stdlib.h>
using namespace std; 
struct PI_In
{
	long	PI_Offset_in;
	int     cStopUp;
	int     cStopDown;
	int     cPI_Aktiv;
};

struct PI_Out
{
	long    PI_out;
};

struct PI_Param
{
	long    P_Param;
	long    I_Param;
	long    PI_list_num;
	long    PI_max_offset;
	long    PI_TimerValue;
	long    iI_Grenze;
	long	PI_Timer;
};

struct PI_Process
{
	long     PI_list[60];
	long     PI_list_index;
	long     PI_offset_sum;
	long     PI_I_value;
	long     PI_P_value;
	long     PI_Offset_temp;
	long     PI_average_offset;
};

struct PI_Anteil
{
	struct PI_In       in;
	struct PI_Out       out;
	struct PI_Param     Param;
	struct PI_Process      process;
};


void PI_Controller_S(struct PI_Anteil* aPI_Anteil, bool En_pid, long long PI_Time, float td, float tr, long PI_Result, float tf){
	
	if (En_pid) {
		aPI_Anteil->in.cPI_Aktiv = TRUE;
	}
	else {
		PI_Time = 300000;  //300秒
		aPI_Anteil->in.cPI_Aktiv = FALSE;
	}
	if (PI_Time)
		aPI_Anteil->Param.P_Param = 500;
	else
		aPI_Anteil->Param.P_Param = 300;


	long long T_MIN_KANAL_FGR = td - 20;
	long long T_MAX_KANAL_FGR = td + 20;

	aPI_Anteil->in.cStopDown = (PI_Time || (PI_Result <= (T_MIN_KANAL_FGR + 2)) || ((PI_Result - tf) < -10));
	aPI_Anteil->in.cStopUp = (PI_Time || (PI_Result >= (T_MAX_KANAL_FGR + 2)) || ((PI_Result - tf) > 10));

	if ((td - tr) > 20)
		aPI_Anteil->in.PI_Offset_in = 20;
	else {
		if ((td - tr) < -20)
			aPI_Anteil->in.PI_Offset_in = -20;
		else
			aPI_Anteil->in.PI_Offset_in = (td - tr);
	}

	int i;
	aPI_Anteil->process.PI_Offset_temp = aPI_Anteil->in.PI_Offset_in;
	if (aPI_Anteil->process.PI_Offset_temp > aPI_Anteil->Param.PI_max_offset)      aPI_Anteil->process.PI_Offset_temp = aPI_Anteil->Param.PI_max_offset;
	if (aPI_Anteil->process.PI_Offset_temp < (-aPI_Anteil->Param.PI_max_offset))   aPI_Anteil->process.PI_Offset_temp = (-aPI_Anteil->Param.PI_max_offset);
	if (aPI_Anteil->in.cPI_Aktiv) {
		if (!(aPI_Anteil->Param.PI_Timer)) {
			aPI_Anteil->Param.PI_Timer = (long long)aPI_Anteil->Param.PI_TimerValue;
			if (aPI_Anteil->process.PI_list_index >= (aPI_Anteil->Param.PI_list_num))     aPI_Anteil->process.PI_list_index = 0;
			aPI_Anteil->process.PI_list[aPI_Anteil->process.PI_list_index] = 0;
			if ((aPI_Anteil->in.cStopUp && (aPI_Anteil->process.PI_Offset_temp > 0)) ||
				(aPI_Anteil->in.cStopDown && (aPI_Anteil->process.PI_Offset_temp < 0))) {
				aPI_Anteil->process.PI_list[aPI_Anteil->process.PI_list_index] = 0;
			}
			else {
				aPI_Anteil->process.PI_list[aPI_Anteil->process.PI_list_index] = aPI_Anteil->process.PI_Offset_temp;
			}
			aPI_Anteil->process.PI_list_index++;
			if (aPI_Anteil->process.PI_list_index >= (aPI_Anteil->Param.PI_list_num))     aPI_Anteil->process.PI_list_index = 0;
			aPI_Anteil->process.PI_average_offset = 0;
			for (i = 0; i < aPI_Anteil->Param.PI_list_num; i++) {
				aPI_Anteil->process.PI_average_offset += aPI_Anteil->process.PI_list[i];
			}
			aPI_Anteil->process.PI_average_offset /= aPI_Anteil->Param.PI_list_num;
			if (!((aPI_Anteil->in.cStopUp && (aPI_Anteil->process.PI_Offset_temp > 0)) ||
				(aPI_Anteil->in.cStopDown && (aPI_Anteil->process.PI_Offset_temp < 0))))
			{
				aPI_Anteil->process.PI_offset_sum += aPI_Anteil->process.PI_average_offset;
			}
			if (aPI_Anteil->process.PI_offset_sum > (aPI_Anteil->Param.iI_Grenze * 100 / aPI_Anteil->Param.I_Param))
				aPI_Anteil->process.PI_offset_sum = (aPI_Anteil->Param.iI_Grenze * 100 / aPI_Anteil->Param.I_Param);
			if (aPI_Anteil->process.PI_offset_sum < ((-aPI_Anteil->Param.iI_Grenze) * 100 / aPI_Anteil->Param.I_Param))
				aPI_Anteil->process.PI_offset_sum = ((-aPI_Anteil->Param.iI_Grenze) * 100 / aPI_Anteil->Param.I_Param);
			aPI_Anteil->process.PI_P_value = aPI_Anteil->process.PI_Offset_temp * aPI_Anteil->Param.P_Param / 100;
			aPI_Anteil->process.PI_I_value = aPI_Anteil->process.PI_offset_sum * aPI_Anteil->Param.I_Param / 100;
			aPI_Anteil->out.PI_out = aPI_Anteil->process.PI_P_value + aPI_Anteil->process.PI_I_value;
		}
	}
	else
	{
		aPI_Anteil->out.PI_out = 0;
		aPI_Anteil->process.PI_list_index = 0;
		aPI_Anteil->process.PI_I_value = 0;
		aPI_Anteil->process.PI_offset_sum = 0;
		aPI_Anteil->process.PI_P_value = 0;
		aPI_Anteil->process.PI_average_offset = 0;
		for (i = 0; i < aPI_Anteil->Param.PI_list_num; i++)
		{
			aPI_Anteil->process.PI_list[i] = aPI_Anteil->process.PI_Offset_temp;
		}
	}
	aPI_Anteil->Param.PI_Timer = aPI_Anteil->Param.PI_Timer - 500;
	if (aPI_Anteil->Param.PI_Timer < 0)
		aPI_Anteil->Param.PI_Timer = 5000;

}


void LinInterpol(long si_WertX,
	long* si_WertY,
	long si_lowX,
	long si_lowY,
	long si_highX,
	long si_highY)
{
	*si_WertY = ((si_lowY - si_highY) * (si_WertX - si_lowX) / (si_lowX - si_highX)) + si_lowY;
}

int main(){
	int i;
	PI_Anteil PI_FGR;
	int PI_en=1;
	long long PI_time;
	long PI_Result,PI_Weight;
	float Td,Tf,Tr;
	PI_Weight=0;
	PI_Result=0;
	PI_time =50000;
	PI_FGR.in.cPI_Aktiv = FALSE;
	PI_FGR.Param.PI_TimerValue = 5000;
	PI_FGR.Param.PI_Timer = 5000;
	PI_FGR.Param.I_Param = 5;
	PI_FGR.Param.PI_max_offset = 20;
	PI_FGR.Param.P_Param = 0;
	PI_FGR.Param.PI_list_num = 48; 
	PI_FGR.Param.iI_Grenze = 150;
	PI_FGR.process.PI_list_index=0;
	float tf,td,tr,ts;
	
	ifstream csv_data("in.csv", ios::in);
	ofstream outFile;
	outFile.open("out.csv", ios::out | ios::trunc);
	//	 写入标题行
    outFile << "PI_time" << ','
            << "PI_timer" << ','
            << "PI_list[]" << ','
            << "Td"<<','
			<< "Tr" << ','
            << "Tf" << ','
            << "PI_Offset_temp" << ','
            << "PI_average_offset"<<','
            << "PI_Result" << ','
            << "PI_offset_sum" << ','
            << "PI_P_value" << ','
            << "PI_I_value"<<','
			<< "cStopUp" << ','
            << "cStopDown" << ','
            << "time" << ','
			<< endl;
	// ********写入两行数据*********
    string line;
    if (!csv_data.is_open())
    {
        cout << "Error: opening file fail" << endl;
        exit(1);
    }
    istringstream sin;         //将整行字符串line读入到字符串istringstream中
    vector<string> words; //声明一个字符串向量
    string word;
    // 读取标题行
    getline(csv_data, line);
    // 读取数据
    while (getline(csv_data, line))
    {
        sin.clear();
        sin.str(line);
        words.clear();
        while (getline(sin, word, ',')) //将字符串流sin中的字符读到field字符串中，以逗号为分隔符
        {
            words.push_back(word); //将每一格中的数据逐个push
        }
        tf=stof(words.at(0));
        tr=stof(words.at(2));
        td=stof(words.at(1));
		ts=stof(words.at(3));

		Td=td*10;
		Tr=tr*10;
		Tf=tf*10;
		int flag=1;//第一次计算标志 
		int time=400; 
		while(time){
			if(flag){
				PI_en=0;
			}else{
				PI_en=1;
			}
			long iDuctSollBase_S=0;
			long Passenger_corr=0;
			PI_Controller_S(&PI_FGR, PI_en, PI_time, Td, Tr, PI_Result, Tf);
			Passenger_corr = 0;
			LinInterpol(Tf, &iDuctSollBase_S, -200, 320, 320, 70);//新风补偿 
			PI_Weight=(Td-200)*3/2;//设定温度补偿 
			PI_Result = iDuctSollBase_S + PI_Weight + PI_FGR.out.PI_out + Passenger_corr;
			PI_time=PI_time-1000;
			if(PI_time<=0){
				PI_time=0;
			}
//			printf("PI_time=%lld,\tPI_timer=%ld,\tPI_list[%ld]=%ld,\tTd=%.1f,\tTr=%.1f,\tTf=%.1f,\tPI_Offset_temp=%ld,\tPI_average_offset=%ld,\tPI_Result=%ld,\tPI_offset_sum=%ld,\tP_Value=%ld,\tI_Value=%ld,\tStopup=%d,\tStopdown=%d,\ttime=%d\n",
//			PI_time,PI_FGR.Param.PI_Timer,PI_FGR.process.PI_list_index,PI_FGR.process.PI_list[PI_FGR.process.PI_list_index],
//			Td,Tr,Tf,PI_FGR.process.PI_Offset_temp,PI_FGR.process.PI_average_offset,PI_Result,PI_FGR.process.PI_offset_sum,
//			PI_FGR.process.PI_P_value,PI_FGR.process.PI_I_value,PI_FGR.in.cStopUp,PI_FGR.in.cStopDown,time
//			);
			//Sleep(10);
			time--;
			flag=0;
			
			//------------------------------------------------------------

		}
		// 写入字符串(数字)
	    outFile << to_string(PI_time) << ','
	            << to_string(PI_FGR.Param.PI_Timer) << ','
	            << to_string(PI_FGR.process.PI_list[PI_FGR.process.PI_list_index]) << ','
	            << to_string(Td) << ','
				<< to_string(Tr) << ','
	            << to_string(Tf) << ','
	            << to_string(PI_FGR.process.PI_Offset_temp) << ','
	            << to_string(PI_FGR.process.PI_average_offset)<<','
	            << to_string(ts*10-PI_Result) << ','
	            << to_string(PI_FGR.process.PI_offset_sum) << ','
	            << to_string(PI_FGR.process.PI_P_value) << ','
	            << to_string(PI_FGR.process.PI_I_value)<<','
				<< to_string(PI_FGR.in.cStopUp) << ','
	            << to_string(PI_FGR.in.cStopDown) << ','
	            << to_string(time) << ','
				<< endl;
	}
	outFile.close();
    csv_data.close();

}
