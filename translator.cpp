#include "translator.h"

Translator::Translator()
{

}

Translator::Translator(QString db_c)
{
    setDBNameConnection(db_c);
    retrieveTableData();
}

Translator::~Translator()
{

}

void Translator::setDBNameConnection(QString db_c)
{
    db_name = db_c;
    retrieveTableData();
}

void Translator::exec(QList<QString> argv)
{
    outargv.clear();

    for(int i=0; i < argv.count(); i++)
    {
        //FORMATTING SENTENCE


        // /FORMATTING
        QList<QString> trans_word = retriveTranslationOf(argv.at(i));
        if(trans_word.count() == 0)
        {
            outargv.push_back(argv.at(i));
        }
        else
        {
            //???????????????????????????????????
            if(argv.at(i).contains('.'))
            {
                outargv.push_back(trans_word.at(0) + '.');
                break;
            }

            outargv.push_back(trans_word.at(0));
        }
    }
}

QString Translator::read()
{
    //if(!outargv.isEmpty())
    //    return "ERROR: QList<QString>::isEmpty() returned 'true' state for: outargv";

    QString out = "";
    QList<QString>::Iterator iter;

    for(iter = outargv.begin(); iter != outargv.end(); iter++)
    {
        out += *iter + ' ';
    }

    return out;
}

QString Translator::read(int arg_index)
{
    if(!outargv.isEmpty())
        return "ERROR: QList<QString>::isEmpty() returned 'true' state for: outargv";
    if(arg_index >= outargv.count() || arg_index < 0)
        return "ERROR: argument of Translator::read(int arg_index) is out of range. Value: " + QString::number(arg_index);

    return outargv.at(arg_index);
}

bool Translator::retrieveTableData()
{
    QSqlQuery query(QSqlDatabase::database(db_name));
    query.prepare("SHOW TABLES");

    if(query.exec())
    {
        tabs.clear();
        while(query.next())
        {
            QString r = query.value(0).toString();

            if(r.at(0) == 't')
                tabs.push_back(r);
        }
        return true;
    }
    else
    {
        return false;
    }
}

QList<QString> Translator::retriveTranslationOf(QString word)
{
    QSqlQuery query(QSqlDatabase::database(db_name));

    QList<QString>::Iterator tab_iter;
    QList<QString> res;
    res.clear();

    for(tab_iter = tabs.begin(); tab_iter != tabs.end(); tab_iter++)
    {
        //qDebug() << "iter:" << *tab_iter;
        query.prepare("SELECT translation FROM " + *tab_iter + " WHERE word = :word;");
        query.bindValue(":word", word);
        if(query.exec())
        {
            while(query.next())
            {
                res.push_back(query.value(0).toString());
            }
            if(!res.isEmpty())
                return res;
        }
        else
        {
            qDebug() << query.lastError().text();
        }
    }

    return res;
}
