#include "headers/timer.h"
#include<iostream>
#include<algorithm>
#include<string>
#include<QtCore>
#include<QDebug>
#include <QMediaPlayer>
#include <QSound>
#include <QList>
Timer::Timer(QObject *parent): QObject(parent), timer(new QTimer(this)), time_string("Set time"),
   timerSound("qrc:/sound/ticking.wav"), mAlarmSound("qrc:/sound/beep.wav"), isActive_flag(false),
   isTimeSet_flag(false)
        {

    connect(timer, SIGNAL(timeout()), this, SLOT(OutputTime()));

}

bool Timer::isActive() {
    return isActive_flag;
}


void Timer:: start() {
    isActive_flag = true;
    timer->start(1);
    timerSound.play();
    timerSound.setLoops(1000);
    mLogger.logMessage("timer started", mLogger.LogLevel::INFO);
    emit isActiveChanged(true);
};

void Timer::setTime(const QString &newTime) {
    time_string = newTime;
    emit timeChanged(newTime);

}


void Timer::setInitialTime(const QString& initial_time) {

    time_string = initial_time;
    timeInMsec = StringToMSec(initial_time);

    timer->setInterval(timeInMsec);
    isTimeSet_flag = true;

    setTime(MSecToString(StringToMSec(time_string)));

    emit timeChanged(time_string);
    mLogger.logMessage("timer started", mLogger.LogLevel::INFO);
    emit isSetStatusChanged(true);
}

void Timer::tap() {
    mTimestampsModel.addTimestamp(time_string);
    mLogger.logMessage("new timestamp", mLogger.LogLevel::INFO);
    emit isTimestampModelChanged(mTimestampsModel.getList());
    //emit isT
}

void Timer::finish() {
    isActive_flag = false;
    timerSound.stop();
    mAlarmSound.play();
    timer->stop();
    mLogger.logMessage("timer finished", mLogger.LogLevel::INFO);

    mTimestampsModel.output();

    emit isActiveChanged(false);
}

void Timer::OutputTime() {
  //  isActive_flag = false;
    timeInMsec--;
    if(timeInMsec == 0) {
        finish();
    }
    time_string = MSecToString(timeInMsec);
    //time_string = MSecToString(timer->remainingTime());
    emit timeChanged(time_string);
    //qDebug() << timer->remainingTime();
}




QString Timer::MSecToString(int msec) {
    //return QString::number(msec);

    QString return_value;

    //minutes to string + ':'
    return_value += QString::number((msec/60000)/10) + QString::number(msec/60000%10) + ":";

    //seconds to string + ':'
    return_value += QString::number(msec%60000/1000/10) + QString::number(msec%60000/1000%10) + ":";

    //milliseconds to string + ':'
    return_value += QString::number(msec%1000/100) + QString::number(msec%1000/10%10) + QString::number(msec%1000%10);
    return return_value;
}

int Timer::StringToMSec(const QString &string_time) {
    QStringList time_list = string_time.split(':');


    return time_list[0].toInt()*60000 + time_list[1].toInt()*1000 +  time_list[2].toInt();
}

void Timer::pause() {
    isActive_flag = false;
    timerSound.stop();
    timer->stop();
    mLogger.logMessage("timer paused", mLogger.LogLevel::INFO);
    emit isActiveChanged(false);
}

void Timer::reset() {
    isActive_flag = false;
    timerSound.stop();
    setTime("Set time");
    mLogger.logMessage("timer reseted", mLogger.LogLevel::INFO);
    emit isActiveChanged(false);
}

bool Timer::isTimeSet() {
    return isTimeSet_flag;
}


int Timer::timestampCount() {
    return mTimestampsModel.size();
}

QStringList Timer::setTimestampModel() const {
    return mTimestampsModel.getList();
};
