#include "dialog.h"
#include <QFileDialog>
#include <QColorDialog>
#include <QFontDialog>
#include <QMessageBox>
Dialog::Dialog(QWidget *parent)
    : QDialog(parent)
{
    setWindowTitle(tr("各种标准对话框的实例"));
    /*****************************文件对话框***************************/
    fileBtn = new QPushButton;//各个控件对象的初始化
    fileBtn->setText(tr("文件标准对话框实例"));
    fileLineEdit = new QLineEdit;//用来显示选择的文件名
    /*****************************文件对话框***************************/

    /*****************************颜色对话框***************************/
    colorBtn = new QPushButton;//创建各个控件的对象
    colorBtn->setText(tr("颜色标准对话框实例"));
    colorFrame = new QFrame;
    colorFrame->setFrameShape(QFrame::Box);
    colorFrame->setAutoFillBackground(true);
    /*****************************颜色对话框***************************/

    /*****************************字体对话框***************************/
    fontBtn = new QPushButton;
    fontBtn->setText(tr("字体标准对话框实例"));
    fontLineEdit = new QLineEdit;
    fontLineEdit->setText(tr("Welcome!"));

    /*****************************字体对话框***************************/

    /*****************************输入对话框***************************/
    inputBtn = new QPushButton;
    inputBtn->setText(tr("标准输入对话框实例"));
    /*****************************输入对话框***************************/

    /*****************************消息对话框***************************/
    MsgBtn = new QPushButton;//创建控件对象
    MsgBtn->setText(tr("标准消息对话框实例"));
    /*****************************消息对话框***************************/

    /*****************************自定义消息框***************************/
    CustomBtn = new QPushButton;
    CustomBtn->setText(tr("用户自定义消息对话框实例"));
    label = new QLabel;
    label->setFrameStyle(QFrame::Panel|QFrame::Sunken);
    /*****************************自定义消息框***************************/



    /**********添加布局管理********/
    mainLayout = new QGridLayout(this);//布局设计
    //文件对话框
    mainLayout->addWidget(fileBtn, 0, 0);
    mainLayout->addWidget(fileLineEdit, 0, 1);
    //颜色对话框
    mainLayout->addWidget(colorBtn, 1, 0);
    mainLayout->addWidget(colorFrame, 1, 1);
    //字体对话框
    mainLayout->addWidget(fontBtn, 2, 0);
    mainLayout->addWidget(fontLineEdit, 2, 1);
    //输入对话框
    mainLayout->addWidget(inputBtn, 3, 0);
    //消息对话框
    mainLayout->addWidget(MsgBtn, 3, 1);
    //自定义消息框
    mainLayout->addWidget(CustomBtn, 4, 0);
    mainLayout->addWidget(label, 4, 1);

    /**********添加事件管理********/
    //文件对话框
    connect(fileBtn, SIGNAL(clicked(bool)), this, SLOT(showFile()));//事件管理
    //颜色对话框
    connect(colorBtn, SIGNAL(clicked(bool)), this, SLOT(showColor()));
    //字体对话框
    connect(fontBtn, SIGNAL(clicked(bool)), this, SLOT(showFont()));
    //输入对话框
    connect(inputBtn, SIGNAL(clicked(bool)), this, SLOT(showInputDlg()));
    //消息对话框
    connect(MsgBtn, SIGNAL(clicked(bool)), this, SLOT(showMsgDlg()));
    //自定义对话框
    connect(CustomBtn, SIGNAL(clicked(bool)), this, SLOT(showCustomDlg()));

}
//文件对话框槽函数
void Dialog::showFile(){
    QString s = QFileDialog::getOpenFileName(this, "open file dialog", "/", "C++ files(*.cpp);;C files(*.c);;Head files(*.h)");
    fileLineEdit->setText(s);
}
//颜色对话框槽函数
void Dialog::showColor(){
    QColor c = QColorDialog::getColor(Qt::blue);
    if(c.isValid()){
        colorFrame->setPalette(QPalette(c));
    }
}
//字体对话框槽函数
void Dialog::showFont(){
    bool ok;
    QFont f = QFontDialog::getFont(&ok);
    if(ok){
        fontLineEdit->setFont(f);
    }
}

//输入对话框槽函数
void Dialog::showInputDlg()
{
    inputDlg = new InputDlg(this);
    inputDlg->show();
}

//消息对话框槽函数
void Dialog::showMsgDlg(){
    msgDlg = new MsgBoxDlg();
    msgDlg->show();
}

void Dialog::showCustomDlg()
{
    label->setText(tr("Custom Message Box"));
    QMessageBox customMsgBox;
    customMsgBox.setWindowTitle(tr("用户自定义消息框"));//设置消息框的标题
    QPushButton *yesBtn = customMsgBox.addButton(tr("Yes"),QMessageBox::ActionRole);
    QPushButton *noBtn = customMsgBox.addButton(tr("No"), QMessageBox::ActionRole);
    QPushButton *cancelBtn=customMsgBox.addButton(QMessageBox::Cancel);
    customMsgBox.setText(tr("这是一个用户自定义消息框！"));
    customMsgBox.setIconPixmap(QPixmap("Qt.png"));
    customMsgBox.exec();
    if(customMsgBox.clickedButton()==yesBtn){
        label->setText("Custom Message Box/Yes");
    }
    if(customMsgBox.clickedButton()==noBtn){
        label->setText("Custom Message Box/No");
    }
    if(customMsgBox.clickedButton()==cancelBtn){
        label->setText("Custom Message Box/Cancel");
    }
    return;
}

Dialog::~Dialog()
{

}
