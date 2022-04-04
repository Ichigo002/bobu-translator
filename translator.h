#ifndef TRANSLATOR_H
#define TRANSLATOR_H

#include <QtSql>
#include <QSqlQuery>
#include <QDebug>
#include <QList>
#include <QString>

class Translator
{
public:
    Translator();
    Translator(QString db_c);
    ~Translator();

    void setDBNameConnection(QString db_c);
    void exec(QList<QString> argv);
    QString read();
    QString read(int arg_index);

private:

    bool retrieveTableData();
    QList<QString> retriveTranslationOf(QString word);

    QString db_name;
    QList<QString> tabs;
    QList<QString> argv;
    QList<QString> outargv;
};

#endif // TRANSLATOR_H
