#include "inputdlg.h"
#include <QInputDialog>

InputDlg::InputDlg(QWidget* parent):QDialog(parent)
{
    setWindowTitle(tr("标准输入对话框实例"));
    nameLabel1 = new QLabel;
    nameLabel1->setText(tr("姓名:"));
    nameLabel2 = new QLabel;
    nameLabel2->setText(tr("代晓涛"));//初始值
    nameLabel2->setFrameStyle(QFrame::Panel|QFrame::Sunken);
    nameBtn = new QPushButton;
    nameBtn->setText(tr("修改姓名"));

    sexLabel1 = new QLabel;
    sexLabel1->setText(tr("性别:"));
    sexLabel2 = new QLabel;
    sexLabel2->setText(tr("男"));//初始值
    sexLabel2->setFrameStyle(QFrame::Panel|QFrame::Sunken);
    sexBtn = new QPushButton;
    sexBtn->setText(tr("修改性别"));

    ageLabel1 = new QLabel;
    ageLabel1->setText(tr("年龄:"));
    ageLabel2 = new QLabel;
    ageLabel2->setText(tr("21"));//初始值
    ageLabel2->setFrameStyle(QFrame::Panel|QFrame::Sunken);
    ageBtn = new QPushButton;
    ageBtn->setText(tr("修改年龄"));

    scoreLabel1 = new QLabel;
    scoreLabel1->setText(tr("成绩:"));
    scoreLabel2 = new QLabel;
    scoreLabel2->setText(tr("80"));//初始值
    scoreLabel2->setFrameStyle(QFrame::Panel|QFrame::Sunken);
    scoreBtn = new QPushButton;
    scoreBtn->setText(tr("修改成绩"));

    mainLayout = new QGridLayout(this);
    mainLayout->addWidget(nameLabel1, 0, 0);
    mainLayout->addWidget(nameLabel2, 0, 1);
    mainLayout->addWidget(nameBtn, 0, 2);

    mainLayout->addWidget(sexLabel1, 1, 0);
    mainLayout->addWidget(sexLabel2, 1, 1);
    mainLayout->addWidget(sexBtn, 1, 2);

    mainLayout->addWidget(ageLabel1, 2, 0);
    mainLayout->addWidget(ageLabel2, 2, 1);
    mainLayout->addWidget(ageBtn, 2, 2);

    mainLayout->addWidget(scoreLabel1, 3, 0);
    mainLayout->addWidget(scoreLabel2, 3, 1);
    mainLayout->addWidget(scoreBtn, 3, 2);

    mainLayout->setMargin(15);
    mainLayout->setSpacing(10);
    connect(nameBtn, SIGNAL(clicked(bool)), this, SLOT(ChangeName()));
    connect(sexBtn, SIGNAL(clicked()), this, SLOT(ChangeSex()));
    connect(ageBtn, SIGNAL(clicked()), this, SLOT(ChangeAge()));
    connect(scoreBtn, SIGNAL(clicked()), this, SLOT(ChangeScore()));

}

/*******************getText()*******************
QString getText(
    QWidget* parent,    //标准输入对话框的父窗口
    const QString& title,   //标准输入对话框的标题名
    const QString& label,   //标准输入对话框的标签提示
    QLineEdit::EchoMode mode = QLineEdit::Normal,
                        //指定标准输入对话框中QLineEdit控件的输入模式
    const QString& text = QString(),
                        //标准字符串输入对话框弹出时QLineEdit控件中默认出现的文字
    bool* ok=0,         //注
    Qt::WindowFlags flags=0 //指明标准输入对话框的窗体标识
);
*******************getText()*******************/

void InputDlg::ChangeName()
{
    bool ok;
    QString text = QInputDialog::getText(this, tr("标准字符串输入对话框"), tr("请输入姓名:"), QLineEdit::Normal, nameLabel2->text(), &ok);
    if(ok && !text.isEmpty()){
        nameLabel2->setText(text);
    }
}
/*******************getItem()*******************
QString getItem(
    QWidget* parent,        //标准输入对话框的父窗口
    const QString& title,   //标准输入对话框的标题名
    const QString& label,   //标准输入对话框的标签提示
    const QStringList& items,//注
    int current=0,          //注
    bool editable=0,        //指定QComboBox控件中显示的文字是否可编辑
    bool * ok=0,            //注
    Qt::WindowFlags flags=0 //指明标准输入对话框的窗体标识
);
*******************getItem()*******************/

void InputDlg::ChangeSex()
{
    QStringList SexItems;
    SexItems << tr("男") << tr("女");
    bool ok;
    QString SexItem = QInputDialog::getItem(this, tr("标准条目选择对话框"), tr("请选择性别:"), SexItems, 0, false, &ok);
    if(ok && !SexItem.isEmpty()){
        sexLabel2->setText(SexItem);
    }
}
/*******************getInt()*******************/
int getInt(
        QWidget* parent,        //标准输入对话框的父窗口
        const QString& title,   //标准输入对话框的标题名
        const QString& label,   //标准输入对话框的标签提示
        int value=0,            //指定标准输入对话框中QSpinBox控件的默认显示值
        int min=-2147483647,
        int max=2147483647,
        int step=1,
        bool* ok=0,
        Qt::WindowFlags flags=0
);
/*******************getInt()*******************/



void InputDlg::ChangeAge()
{

}

void InputDlg::ChangeScore()
{

}
