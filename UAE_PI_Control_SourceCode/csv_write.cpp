#include <iostream>
#include <fstream>
using namespace std;
int main()
{
    ofstream outFile;
    outFile.open("test.csv", ios::out | ios::trunc);
    // д�������
    outFile << "name" << ','
            << "income" << ','
            << "expenditure" << ','
            << "addr" << endl;
    // ********д����������*********
    // д���ַ���(����)
    outFile << "zhangsan" << ','
            << "258" << ','
            << "1200" << ','
            << "�й� ������" << endl;
    // д�븡����(תΪ�ַ���)
    outFile << "lisi" << ','
            << to_string(2032.1) << ','
            << to_string(789.2) << ','
            << "�й� ����ʡ" << endl;
    outFile.close();
    return 0;
}

