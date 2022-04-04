#include "mainwindow.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    a.setOrganizationName("Horisan");
    a.setOrganizationDomain("naomi03.ga");
    a.setApplicationName("Bobu-Translator");

    MainWindow w;
    w.show();
    return a.exec();
}
