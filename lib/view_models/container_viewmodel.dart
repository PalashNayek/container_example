import 'package:flutter/material.dart';

class ContainerViewModel extends ChangeNotifier {
  Color _color = Colors.blue;
  double _width = 100.0;
  double _height = 100.0;
  double _borderRadius = 8.0;

  Color get color => _color;
  double get width => _width;
  double get height => _height;
  double get borderRadius => _borderRadius;

  void setColor(Color color) {
    _color = color;
    notifyListeners();
  }

  void setWidth(double width) {
    _width = width;
    notifyListeners();
  }

  void setHeight(double height) {
    _height = height;
    notifyListeners();
  }

  void setBorderRadius(double radius) {
    _borderRadius = radius;
    notifyListeners();
  }
}
