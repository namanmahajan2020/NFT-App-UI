import 'package:flutter/material.dart';
import 'dart:ui';

class GlassBox extends StatelessWidget {
  final child;
  const GlassBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(alignment: Alignment.bottomCenter, child: child),
        ),
      ),
    );
  }
}
