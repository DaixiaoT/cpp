#include "mainwindow.h"
#include "ui_mainwindow.h"

const static double PI=3.1415926;
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_countBtn_clicked()
{
    bool ok;
    QString tempStr;
    QString valueStr=ui->lineEdit->text();
    int valueInt=valueStr.toInt(&ok);
    double area=valueInt*valueInt*PI;
    ui->arealabel_2->setText(tempStr.setNum(area));
}
