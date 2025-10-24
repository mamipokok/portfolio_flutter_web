import 'package:flutter/material.dart';
import 'package:portopolio_flutter_web/pages/loading_page.dart';
import 'package:portopolio_flutter_web/themes/app_color.dart';
import 'package:portopolio_flutter_web/widgets/floating_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PORTOFOLIO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'outfit',
        scaffoldBackgroundColor: AppColor.bgDark,
        useMaterial3: true,
      ),
      home: LoadingPage(),
    );
  }
}
