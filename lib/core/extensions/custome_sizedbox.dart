import 'package:flutter/material.dart';

extension BoxExtension on num {
  SizedBox get box => SizedBox(width: toDouble(), height: toDouble());

  SizedBox get boxW => SizedBox(width: toDouble());

  SizedBox get boxH => SizedBox(height: toDouble());
}
