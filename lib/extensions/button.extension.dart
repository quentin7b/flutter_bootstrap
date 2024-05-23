import 'package:flutter/material.dart';

extension FullWidthButton on ButtonStyleButton {
  /// Returns a button with full width of its parent
  Widget fullWidth({
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 8.0,
    ),
  }) {
    return Container(
      padding: padding,
      width: double.infinity,
      child: this,
    );
  }
}
