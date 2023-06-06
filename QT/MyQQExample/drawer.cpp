#include "drawer.h"
#include <QGroupBox>
#include <QVBoxLayout>
Drawer::Drawer(QWidget *parent, Qt::WindowFlags f):QToolBox(parent, f)
{
    setWindowTitle(tr("My QQ"));//设置主窗体的标题
    toolBtn1_1 = new QToolButton;
    toolBtn1_1->setText(tr("张三"));
    QPixmap icon("debug/images/1.jpg");
    toolBtn1_1->setIcon(icon);
    toolBtn1_1->setIconSize(icon.size());
    toolBtn1_1->setAutoRaise(true);
    toolBtn1_1->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);

    toolBtn1_2 = new QToolButton;
    toolBtn1_2->setText(tr("李四"));
    QPixmap icon1("debug/images/2.jpg");
    toolBtn1_2->setIcon(icon1);
    toolBtn1_2->setIconSize(icon.size());
    toolBtn1_2->setAutoRaise(true);
    toolBtn1_2->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);

    toolBtn1_3 = new QToolButton;
    toolBtn1_3->setText(tr("王五"));
    QPixmap icon2("debug/images/1.jpg");
    toolBtn1_3->setIcon(icon2);
    toolBtn1_3->setIconSize(icon.size());
    toolBtn1_3->setAutoRaise(true);
    toolBtn1_3->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);

    toolBtn1_4 = new QToolButton;
    toolBtn1_4->setText(tr("赵六"));
    QPixmap icon3("debug/images/2.jpg");
    toolBtn1_4->setIcon(icon3);
    toolBtn1_4->setIconSize(icon.size());
    toolBtn1_4->setAutoRaise(true);
    toolBtn1_4->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);

    toolBtn1_5 = new QToolButton;
    toolBtn1_5->setText(tr("钱七"));
    QPixmap icon4("debug/images/1.jpg");
    toolBtn1_5->setIcon(icon4);
    toolBtn1_5->setIconSize(icon.size());
    toolBtn1_5->setAutoRaise(true);
    toolBtn1_5->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);

    QGroupBox *groupBox1 = new QGroupBox;
    QVBoxLayout *layout1 = new QVBoxLayout(groupBox1);

    layout1->setMargin(10);//布局中各窗体的显示间距
    layout1->setAlignment(Qt::AlignHCenter);//布局中各窗体的显示位置
    //加入抽屉内的各个按钮
    layout1->addWidget(toolBtn1_1);
    layout1->addWidget(toolBtn1_2);
    layout1->addWidget(toolBtn1_3);
    layout1->addWidget(toolBtn1_4);
    layout1->addWidget(toolBtn1_5);
    //插入一个占位符
    layout1->addStretch();

    toolBtn2_1 = new QToolButton;
    toolBtn2_1->setText(tr("张三"));
    QPixmap icon5("debug/images/1.jpg");
    toolBtn2_1->setIcon(icon5);
    toolBtn2_1->setIconSize(icon.size());
    toolBtn2_1->setAutoRaise(true);
    toolBtn2_1->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);

    toolBtn2_2 = new QToolButton;
    toolBtn2_2->setText(tr("张三"));
    QPixmap icon6("debug/images/1.jpg");
    toolBtn2_2->setIcon(icon6);
    toolBtn2_2->setIconSize(icon.size());
    toolBtn2_2->setAutoRaise(true);
    toolBtn2_2->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);

    QGroupBox *groupBox2 = new QGroupBox;
    QVBoxLayout *layout2 = new QVBoxLayout(groupBox2);

    layout2->setMargin(10);//布局中各窗体的显示间距
    layout2->setAlignment(Qt::AlignHCenter);//布局中各窗体的显示位置

    layout2->addWidget(toolBtn2_1);
    layout2->addWidget(toolBtn2_2);

    toolBtn3_1 = new QToolButton;
    toolBtn3_1->setText(tr("张三"));
    QPixmap icon7("debug/images/1.jpg");
    toolBtn3_1->setIcon(icon7);
    toolBtn3_1->setIconSize(icon.size());
    toolBtn3_1->setAutoRaise(true);
    toolBtn3_1->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);

    toolBtn3_2 = new QToolButton;
    toolBtn3_2->setText(tr("张三"));
    QPixmap icon8("debug/images/1.jpg");
    toolBtn3_2->setIcon(icon8);
    toolBtn3_2->setIconSize(icon.size());
    toolBtn3_2->setAutoRaise(true);
    toolBtn3_2->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);

    QGroupBox *groupBox3 = new QGroupBox;
    QVBoxLayout *layout3 = new QVBoxLayout(groupBox3);

    layout3->setMargin(10);//布局中各窗体的显示间距
    layout3->setAlignment(Qt::AlignHCenter);//布局中各窗体的显示位置

    layout3->addWidget(toolBtn3_1);
    layout3->addWidget(toolBtn3_2);
    //将准备好的抽屉插入ToolBox中
    this->addItem((QWidget*)groupBox1, tr("我的好友"));
    this->addItem((QWidget*)groupBox2, tr("陌生人"));
    this->addItem((QWidget*)groupBox3, tr("黑名单"));

}
