import 'package:flutter/material.dart';

class SBW extends StatelessWidget {
  final double? w;
  final double? h;
  final Widget? c;
  const SBW({super.key, this.w, this.h, this.c});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: w, height: h, child: c);
  }
}
