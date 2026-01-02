
import 'package:flutter/material.dart';

class PageTransformer {
  static const double defaultScaleFactor = 0.8;
  static const double defaultHeight = 220.0;

  /// حساب تحويل Matrix4 للصفحة بناءً على موقعها
  static Matrix4 calculateTransform({
    required int index,
    required double currentPage,
    double scaleFactor = defaultScaleFactor,
    double height = defaultHeight,
  }) {
    final int currentFloor = currentPage.floor();
    final bool isCurrent = index == currentFloor;
    final bool isNext = index == currentFloor + 1;
    final bool isPrevious = index == currentFloor - 1 && currentFloor > 0;

    // الصفحة الحالية
    if (isCurrent) {
      final double scale = 1 - (currentPage - index) * (1 - scaleFactor);
      final double translation = height * (1 - scale) / 2;
      return _createMatrix(scale: scale, translationY: translation);
    }
    
    // الصفحة التالية أو السابقة
    else if (isNext || isPrevious) {
      final double distance = (currentPage - index).abs();
      final double scale = scaleFactor + (1 - distance) * (1 - scaleFactor);
      final double translation = height * (1 - scale) / 2;
      return _createMatrix(scale: scale, translationY: translation);
    }
    
    // الصفحات البعيدة
    else {
      final double translation = height * (1 - scaleFactor) / 2;
      return _createMatrix(scale: scaleFactor, translationY: translation);
    }
  }

  /// إنشاء Matrix4 مع معاملات محددة
  static Matrix4 _createMatrix({
    required double scale,
    double translationY = 0.0,
  }) {
    return Matrix4.diagonal3Values(1, scale, 1)
      ..setTranslationRaw(0, translationY, 0);
  }

  /// حساب المقياس بناءً على المسافة من الصفحة الحالية
  static double calculateScale({
    required int index,
    required double currentPage,
    double scaleFactor = defaultScaleFactor,
  }) {
    final double distance = (currentPage - index).abs();
    
    if (distance <= 1.0) {
      return 1 - distance * (1 - scaleFactor);
    }
    
    return scaleFactor;
  }
}