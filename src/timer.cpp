#include<iostream>
#include"timer.h"

Timer::Timer()
{
    timer = new QTimer(this);
    connect(timer, SIGNAL(timeout()), this, SLOT(TimerSlot()));
    timer->start(1000);
}
Timer::~Timer() {

}

void Timer::start()
{
    timer->start(1000);
}

void Timer::TimerSlot()
{
    std::cout << "Text every 1 sec!\n";
}
