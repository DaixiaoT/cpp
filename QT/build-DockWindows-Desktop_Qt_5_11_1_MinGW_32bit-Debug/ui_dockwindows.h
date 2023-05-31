/********************************************************************************
** Form generated from reading UI file 'dockwindows.ui'
**
** Created by: Qt User Interface Compiler version 5.11.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DOCKWINDOWS_H
#define UI_DOCKWINDOWS_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_DockWindows
{
public:
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QWidget *centralWidget;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *DockWindows)
    {
        if (DockWindows->objectName().isEmpty())
            DockWindows->setObjectName(QStringLiteral("DockWindows"));
        DockWindows->resize(400, 300);
        menuBar = new QMenuBar(DockWindows);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        DockWindows->setMenuBar(menuBar);
        mainToolBar = new QToolBar(DockWindows);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        DockWindows->addToolBar(mainToolBar);
        centralWidget = new QWidget(DockWindows);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        DockWindows->setCentralWidget(centralWidget);
        statusBar = new QStatusBar(DockWindows);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        DockWindows->setStatusBar(statusBar);

        retranslateUi(DockWindows);

        QMetaObject::connectSlotsByName(DockWindows);
    } // setupUi

    void retranslateUi(QMainWindow *DockWindows)
    {
        DockWindows->setWindowTitle(QApplication::translate("DockWindows", "DockWindows", nullptr));
    } // retranslateUi

};

namespace Ui {
    class DockWindows: public Ui_DockWindows {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DOCKWINDOWS_H
