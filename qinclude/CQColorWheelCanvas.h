#ifndef CQColorWheelCanvas_H
#define CQColorWheelCanvas_H

#include <QWidget>
#include <CColorWheel.h>

class CQColorWheel;

class CQColorWheelCanvas : public QWidget, public CColorWheel {
  Q_OBJECT

 public:
  CQColorWheelCanvas(CQColorWheel *wheel, int radius=0,
                     COrientation orientation=CORIENTATION_VERTICAL,
                     bool show_swatches=true);

 ~CQColorWheelCanvas();

  void paintEvent(QPaintEvent *e) override;

  void mousePressEvent  (QMouseEvent *event) override;
  void mouseMoveEvent   (QMouseEvent *event) override;
  void mouseReleaseEvent(QMouseEvent *event) override;

  void setForeground(const CRGBA &rgba) override;

  void drawPoint(const CIPoint2D &p) override;
  void drawLine(const CIPoint2D &p1, const CIPoint2D &p2) override;
  void fillRectangle(const CIBBox2D &rect) override;

 private:
  CQColorWheel *wheel_;
  QPainter     *painter_;
  CRGBA         fg_;
};

#endif
