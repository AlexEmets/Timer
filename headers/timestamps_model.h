#ifndef TIMESTAMPS_MODEL_H
#define TIMESTAMPS_MODEL_H

#include <QAbstractListModel>
#include <QList>
#include <QString>
#include <iostream>
#include <QTextStream>
#include <QFile>
#include <QDebug>
#include <QFile>

class TimestampsModel : public QAbstractListModel {
    Q_OBJECT
   public:
    enum TimestampsRole { Timestamp = Qt::DisplayRole };
    Q_ENUM(TimestampsRole)

    explicit TimestampsModel(QObject *parent = nullptr);
    ~TimestampsModel();
    int rowCount(const QModelIndex & = QModelIndex()) const;
    [[nodiscard]] QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
   // QHash<int, QByteArray> roleNames() const;

    void addTimestamp(const QString &timestamp);
    [[nodiscard]] QStringList getList() const {return mTimestamps;}
    void clearModel();
    void output() const;
    [[nodiscard]] int size() const;
   private:
    QStringList mTimestamps;
    QFile timestamps_outfile;
};

#endif // TIMESTAMPS_MODEL_H
