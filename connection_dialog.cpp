#include "connection_dialog.h"
#include "ui_connection_dialog.h"

Connection_Dialog::Connection_Dialog(QString* host, QString* dbname, QString* pass, QString* user, QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Connection_Dialog)
{
    ui->setupUi(this);
    this->host = host;
    this->dbname = dbname;
    this->pass = pass;
    this->user = user;

    ui->line_host->setText(*host);
    ui->line_dbn->setText(*dbname);
    ui->line_pass->setText(*pass);
    ui->line_user->setText(*user);
}

Connection_Dialog::~Connection_Dialog()
{
    delete ui;
}

void Connection_Dialog::on_buttonBox_accepted()
{
    *host = ui->line_host->text();
    *user = ui->line_user->text();
    *dbname = ui->line_dbn->text();
    *pass = ui->line_pass->text();
}

void Connection_Dialog::on_buttonBox_rejected()
{
    close();
}

void Connection_Dialog::on_localhost_clicked()
{
    ui->line_dbn->setText("bobu-translator-db");
    ui->line_host->setText("localhost");
    ui->line_pass->setText("");
    ui->line_user->setText("root");
}

