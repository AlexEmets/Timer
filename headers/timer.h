#pragma once
#include<QObject>
#include<QTimer>
#include <QString>
#include<iostream>
#include<QSound>
#include"logger.h"
#include"timestamps_model.h"
#include<QAbstractItemModel>
class Timer : public QObject{
    Q_OBJECT

    Q_PROPERTY(QString time READ get_time_string WRITE setInitialTime NOTIFY timeChanged)
    Q_PROPERTY(bool isActive READ isActive NOTIFY isActiveChanged)
    Q_PROPERTY(bool isTimeSet READ isTimeSet NOTIFY isSetStatusChanged)
    Q_PROPERTY(int timestamps_count READ timestampCount NOTIFY isTimestampModelChanged)
    Q_PROPERTY(QStringList setTimestampModel READ setTimestampModel NOTIFY isTimestampModelChanged)
    //Q_PROPERTY(QList timestamps_count READ timestampCount NOTIFY isTimestampCountChanged)

public:
    explicit Timer(QObject *parent = nullptr);

    void setInitialTime(const QString& new_time);
    void setTime(const QString &newTime);


    Q_INVOKABLE QString get_time_string() const {return time_string;}
    void setAlarmSound(const QString& pathToSoundFile);
    Q_INVOKABLE void start();
    Q_INVOKABLE void pause();
    Q_INVOKABLE void reset();
    Q_INVOKABLE void tap();
    int timestampCount();
    bool isActive();
    QString MSecToString(int msec);
    int StringToMSec(const QString& time);
    bool isTimeSet();
    [[nodiscard]] QStringList setTimestampModel() const;
signals:
    void timeChanged(const QString& changed_time);
    void isActiveChanged(bool active);
    void isSetStatusChanged(bool status);
    void isTimestampModelChanged(QStringList newList);
private slots:
    void OutputTime();
private:
    QString mCurrentTime;
    void finish();
    QTimer* timer;
    QString time_string;
    size_t time_int;
    bool isTimeSet_flag;
    int timeInMsec;
    QSound mAlarmSound;
    QSound timerSound;
    Logger mLogger;
    bool isActive_flag;
    TimestampsModel mTimestampsModel;
};
