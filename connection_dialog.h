#ifndef CONNECTION_DIALOG_H
#define CONNECTION_DIALOG_H

#include <QDialog>

namespace Ui {
class Connection_Dialog;
}

class Connection_Dialog : public QDialog
{
    Q_OBJECT

public:
    explicit Connection_Dialog(QString* host, QString* dbname, QString* pass, QString* user, QWidget *parent = nullptr);
    ~Connection_Dialog();

private slots:
    void on_buttonBox_accepted();
    void on_buttonBox_rejected();

    void on_localhost_clicked();

private:
    Ui::Connection_Dialog *ui;
    QString *host, *dbname, *pass, *user;

};

#endif // CONNECTION_DIALOG_H
