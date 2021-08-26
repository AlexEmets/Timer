
#include "headers/timestamps_model.h"
#include<QTextStream>

// TODO add implementation
void TimestampsModel::addTimestamp(const QString &timestamp) {
    mTimestamps.append(timestamp);
    qDebug() << timestamp << "timestamp added\n";
}

void TimestampsModel::clearModel() {
    mTimestamps.clear();
}

TimestampsModel::TimestampsModel(QObject *parent): timestamps_outfile("timestamps.txt"){
    timestamps_outfile.open(QIODevice::WriteOnly);
}


QVariant TimestampsModel::data(const QModelIndex &index, int role) const {
    return QVariant();
}

int TimestampsModel::rowCount(const QModelIndex &) const {
    return mTimestamps.size();
}

void TimestampsModel::output() const {
        //QFile output2("timestamps");
        //output2.open(QIODevice::WriteOnly);
        //QTextStream out("timestamps.txt");
       // QTextStream out(&timestamps_outfile);
        //out << "1";
    for(const auto& it: mTimestamps)
    {
        qDebug() << it << " ";
    }
}

TimestampsModel::~TimestampsModel() {
    timestamps_outfile.close();
}

int TimestampsModel::size() const {
    return mTimestamps.size();
}
