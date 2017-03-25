#include <QDialog>

class CQColorWheel;

class CQColorWheelTest : public QDialog {
  Q_OBJECT

 public:
  CQColorWheelTest();

 private:
  CQColorWheel *wheel_;
};
