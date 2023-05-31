#ifndef DOCKWINDOWS_H
#define DOCKWINDOWS_H

#include <QMainWindow>

namespace Ui {
class DockWindows;
}

class DockWindows : public QMainWindow
{
    Q_OBJECT

public:
    explicit DockWindows(QWidget *parent = 0);
    ~DockWindows();

private:
    Ui::DockWindows *ui;
};

#endif // DOCKWINDOWS_H
