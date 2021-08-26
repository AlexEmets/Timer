#ifndef LOGGER_H
#define LOGGER_H

#include <QString>
#include<iostream>
#include<fstream>
#include <QFile>
//#include "timer.h"
class Logger {
public:
    enum LogLevel{
        INFO,
        DEBUG,
        WARNING,
        CRITICAL
    };
    Logger();
    ~Logger();
    void logMessage(const QString& message, LogLevel level);
private:
    const QString LOG_FILE_NAME = "timer.log";
    QFile outfile;
};

#endif // LOGGER_H
