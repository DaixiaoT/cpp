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
            cout << word<<" ";
            //cout << atol(word.c_str());
        }
        
        cout << endl;
        
        
        // do something。。。
    }
    csv_data.close();
    return 0;
}

