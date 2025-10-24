import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final ScrollController controller;
  const ContactPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: controller,
        children: [],
      )
    );
  }
}
