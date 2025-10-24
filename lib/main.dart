import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portopolio_flutter_web/main_page.dart';
import 'dart:html' as html;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    html.window.history.pushState(null, 'loading', '/');
  }
  runApp(
    ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return const MyApp();
      },
    ),
  );
}
