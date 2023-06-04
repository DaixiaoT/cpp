#include <iostream>
#include <istream>
#include <streambuf>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <stdlib.h>
using namespace std; 
int main()
{
    ifstream csv_data("4.csv", ios::in);
    string line;
    if (!csv_data.is_open())
    {
        cout << "Error: opening file fail" << endl;
        exit(1);
    }

    istringstream sin;         //�������ַ���line���뵽�ַ���istringstream��
    vector<string> words; //����һ���ַ�������
    string word;

    // ��ȡ������
    getline(csv_data, line);
    
    // ��ȡ����
    while (getline(csv_data, line))
    {
        sin.clear();
        sin.str(line);
        words.clear();
        while (getline(sin, word, ',')) //���ַ�����sin�е��ַ�����field�ַ����У��Զ���Ϊ�ָ���
        {
            words.push_back(word); //��ÿһ���е��������push
            cout << word<<" ";
            //cout << atol(word.c_str());
        }
        
        cout << endl;
        
        
        // do something������
    }
    csv_data.close();
    return 0;
}

