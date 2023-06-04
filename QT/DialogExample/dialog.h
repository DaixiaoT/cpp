#ifndef DIALOG_H
#define DIALOG_H

#include <QDialog>
#include <QPushButton>
#include <QLineEdit>
#include <QGridLayout>
//添加标准输入对话框头文件
#include "inputdlg.h"
class Dialog : public QDialog
{
    Q_OBJECT

public:
    Dialog(QWidget *parent = 0);
    ~Dialog();

private:
    //标准文件对话框
    QPushButton *fileBtn;
    QLineEdit *fileLineEdit;
    QGridLayout *mainLayout;

    //标准颜色对话框
    QPushButton *colorBtn;
    QFrame *colorFrame;

    //标准字体对话框
    QPushButton *fontBtn;
    QLineEdit *fontLineEdit;

    //标准输入对话框
    QPushButton *inputBtn;
    InputDlg *inputDlg;//对话框实例

private slots:
    void showFile();
    void showColor();
    void showFont();
    void showInputDlg();
};

#endif // DIALOG_H
