#include "headers/logger.h"
#include<QTextStream>
// TODO add implementation
void Logger::logMessage(const QString &message, Logger::LogLevel level) {
    QTextStream out(&outfile);
    out << message << "\n";
}

Logger::Logger():outfile(LOG_FILE_NAME) {
    outfile.open(QIODevice::WriteOnly);
}

Logger::~Logger() {
    outfile.close();
}
