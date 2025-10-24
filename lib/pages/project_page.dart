import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portopolio_flutter_web/widgets/hover_icon.dart';

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
              child: HoverIcon(
                icon: Brands.a2z,
                onTap: () {},
              ),
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
