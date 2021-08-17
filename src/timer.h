#include<QObject>
#include<QTimer>
#include <QString>
class Timer: public QObject {
    Q_OBJECT

    public:
       Timer();
      ~Timer();
       void start();

        QTimer* timer;
        int time;
    private slots:
        void TimerSlot();
};
