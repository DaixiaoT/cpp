#include "mainwindow.h"
#include <QApplication>


int main(int argc, char *argv[])//入口函数，有且只有一个
{
    QApplication a(argc, argv);
    MainWindow w;//创建一个对话框对象
    w.show();

    return a.exec();
}
