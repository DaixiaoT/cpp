#ifndef MSGBOXDLG_H
#define MSGBOXDLG_H

#include <QObject>
#include <QLabel>
#include <QGridLayout>
#include <QDialog>
#include <QPushButton>

class MsgBoxDlg : public QDialog
{
    Q_OBJECT
public:

     MsgBoxDlg(QWidget *parent = nullptr);

private slots:
    void showQuestionMsg();
    void showInfomationMsg();
    void showWarningMsg();
    void showCriticalMsg();
    void showAboutMsg();
    void showAboutQtMsg();
private:
    QLabel *label;
    QPushButton *questionBtn;
    QPushButton *informationBtn;
    QPushButton *warningBtn;
    QPushButton *criticalBtn;
    QPushButton *aboutBtn;
    QPushButton *aboutQtBtn;
    QGridLayout *mainLayout;
signals:

public slots:
};

#endif // MSGBOXDLG_H
