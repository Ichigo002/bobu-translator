#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtSql>
#include <QSqlDatabase>
#include <QDebug>
#include <QMessageBox>
#include <QStatusBar>
#include <QSettings>
#include <QList>
#include "translator.h"
#include "connection_dialog.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_actionExit_triggered();

    void on_actionSettings_triggered();

    void on_actionConnect_triggered();

    void on_text_enter_textChanged();

    void on_actionDisconnect_triggered();

private:
    void ConnectDatabase();


    Ui::MainWindow *ui;
    Translator translator;
    QSqlDatabase db;
    bool conn;
    QString db_hostname, db_name, db_password, db_user;
};
#endif // MAINWINDOW_H
