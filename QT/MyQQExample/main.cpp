#include "dialog.h"
#include <QApplication>
#include "drawer.h"
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
//    Dialog w;
    Drawer drawer;
    drawer.show();
//    w.show();

    return a.exec();
}
