import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  final ScrollController controller;
  const ProjectPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: controller,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text("Kontolodon"),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text("Kontolodon"),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text("Kontolodon"),
            ),
          ),
        ],
      ),
    );
  }
}
