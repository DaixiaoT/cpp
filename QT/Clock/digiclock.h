#ifndef DIGICLOCK_H
#define DIGICLOCK_H
#include <QLCDNumber>
#include <QDialog>

class DigiClock : public QLCDNumber
{
    Q_OBJECT

public:
    DigiClock(QWidget *parent = 0);
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    ~DigiClock();
public slots:
    void showTime();//显示当前时间
private:
    QPoint dragPosition;    //保存鼠标点相对电子始终窗体左上角的偏移值
    bool showColon;     //用于显示时间时是否显示:
};

#endif // DIGICLOCK_H
