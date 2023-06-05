#include "msgboxdlg.h"
#include <QMessageBox>
MsgBoxDlg::MsgBoxDlg(QWidget *parent) : QDialog(parent)
{
    setWindowTitle(tr("标准消息对话框实例"));//设置对话框的标题
    label = new QLabel;
    label->setText(tr("请选择一种消息框"));

    questionBtn = new QPushButton;
    questionBtn->setText(tr("QuestionMsg"));

    informationBtn = new QPushButton;
    informationBtn->setText(tr("InformationMsg"));

    warningBtn = new QPushButton;
    warningBtn->setText(tr("WarningMsg"));

    criticalBtn = new QPushButton;
    criticalBtn->setText(tr("CriticalMsg"));

    aboutBtn = new QPushButton;
    aboutBtn->setText(tr("AboutMsg"));

    aboutQtBtn = new QPushButton;
    aboutQtBtn->setText(tr("AboutQtMsg"));

    //布局
    mainLayout = new QGridLayout(this);
    mainLayout->addWidget(label, 0, 0, 1, 2);
    mainLayout->addWidget(questionBtn, 1, 0);
    mainLayout->addWidget(informationBtn, 1, 1);
    mainLayout->addWidget(criticalBtn, 2, 0);
    mainLayout->addWidget(aboutBtn, 3, 0);
    mainLayout->addWidget(aboutQtBtn, 3, 1);
    //事件关联
    connect(questionBtn, SIGNAL(clicked(bool)), this, SLOT(showQuestionMsg()));
    connect(informationBtn, SIGNAL(clicked(bool)), this, SLOT(showInfomationMsg()));
    connect(warningBtn, SIGNAL(clicked(bool)), this, SLOT(showWarningMsg()));
    connect(criticalBtn, SIGNAL(clicked(bool)), this, SLOT(showCriticalMsg()));
    connect(aboutBtn, SIGNAL(clicked(bool)), this, SLOT(showAboutMsg()));
    connect(aboutQtBtn, SIGNAL(clicked(bool)), this, SLOT(showAboutQtMsg()));

}
/******************question***********************
StandardButton QMessageBox::question(
        QWidget *parent,                //消息框的父指针
        const QString& title,           //消息框的标题栏
        const QString& text,            //消息框的文字提示信息
        StandardButtons buttons=Ok,
        StandardButton defaultButton=NoButton
);
******************question***********************/
void MsgBoxDlg::showQuestionMsg()
{
    label->setText(tr("Question Message Box"));
    switch (QMessageBox::question(this, tr("Question消息框"), tr("您现在已经修改完成，是否要结束程序？"),
                                  QMessageBox::Ok|QMessageBox::Cancel,QMessageBox::Ok))
    {
    case QMessageBox::Ok:
        label->setText("Question button/Ok");
        break;
    case QMessageBox::Cancel:
        label->setText("Question button/Cancel");
        break;
    default:
        break;
    }
    return;
}

void MsgBoxDlg::showInfomationMsg()
{

}

void MsgBoxDlg::showWarningMsg()
{

}

void MsgBoxDlg::showCriticalMsg()
{

}

void MsgBoxDlg::showAboutMsg()
{

}

void MsgBoxDlg::showAboutQtMsg()
{

}
