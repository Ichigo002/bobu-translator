#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    conn = false;
    ui->statusbar->addWidget(ui->status_label);
    ui->status_label->setStyleSheet("color: red;");
    ui->status_label->setText("Not Connected.");

    QSettings ss;
    db_hostname = ss.value("host").toString();
    db_name = ss.value("name").toString();
    db_password = ss.value("pass").toString();
    db_user = ss.value("user").toString();
}

MainWindow::~MainWindow()
{
    delete ui;
    db.close();
    QSqlDatabase::removeDatabase("bobu-connection");

    QSettings ss;
    ss.setValue("host", db_hostname);
    ss.setValue("name", db_name);
    ss.setValue("pass", db_password);
    ss.setValue("user", db_user);
}

void MainWindow::on_actionExit_triggered()
{
    this->close();
}


void MainWindow::on_actionSettings_triggered()
{
    Connection_Dialog dialog(&db_hostname, &db_name, &db_password, &db_user);
    dialog.exec();
}


void MainWindow::on_actionConnect_triggered()
{
    db = QSqlDatabase::addDatabase("QMYSQL", "bobu-connection");
    db.setHostName(db_hostname);
    db.setDatabaseName(db_name);
    db.setUserName(db_user);
    db.setPassword(db_password);

    if(db.open())
    {
        translator.setDBNameConnection("bobu-connection");

        ui->status_label->setStyleSheet("color: green;");
        ui->status_label->setText("Connected.");
        conn = true;

    }
    else
    {
        ui->status_label->setStyleSheet("color: red;");
        ui->status_label->setText("Connecting failed. Incorrect settigns or db doesn't exist.");
        conn = false;
    }
}


void MainWindow::on_text_enter_textChanged()
{
    if(!conn)
        return;

    QList<QString> argv;
    argv = ui->text_enter->toPlainText().split(" ");

    translator.exec(argv);

    ui->text_output->setText(translator.read());
}


void MainWindow::on_actionDisconnect_triggered()
{
    if(!conn)
        return;

    ui->status_label->setStyleSheet("color: #d87737;");
    ui->status_label->setText("Disconnected.");

    conn = false;
    db.close();
    QSqlDatabase::removeDatabase("bobu-connection");
}

