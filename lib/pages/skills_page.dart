import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  final ScrollController controller;
  const SkillsPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: controller,
        children: [],
      ),
    );
  }
}
