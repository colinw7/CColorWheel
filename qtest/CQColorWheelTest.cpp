#include <CQColorWheelTest.h>
#include <CQColorWheel.h>
#include <CQApp.h>

#include <QVBoxLayout>

int
main(int argc, char **argv)
{
  CQApp app(argc, argv);

  CQColorWheelTest *test = new CQColorWheelTest;

  test->show();

  return app.exec();
}

CQColorWheelTest::
CQColorWheelTest()
{
  QVBoxLayout *layout = new QVBoxLayout(this);
  layout->setMargin(0); layout->setSpacing(0);

  wheel_ = new CQColorWheel(this, Qt::Horizontal, 120);

  layout->addWidget(wheel_);
}
