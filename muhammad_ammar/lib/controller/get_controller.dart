import 'package:get/get.dart';

class GetController extends GetxController {
  double dx = 0.0;
  double dy = 0.0;

  void updatePosition(double x, double y) {
    dx = x;
    dy = y;
    update();
  }
}
