import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:portopolio_flutter_web/themes/app_color.dart';
import 'package:portopolio_flutter_web/widgets/floating_bar.dart';
import 'package:portopolio_flutter_web/widgets/sizedbox_widget.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool _showButton = false;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showButton = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SBW(
              w: 400.w,
              h: 300.h,
              c: Lottie.asset(
                'assets/animation/loading_bar.json',
                fit: BoxFit.fill,
                repeat: false,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 200.h),
                  child: AnimatedOpacity(
                    opacity: _showButton ? 1 : 0,
                    duration: const Duration(milliseconds: 500),
                    child: _showButton
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shadowColor: AppColor.accentCyan,
                                elevation: 30,
                                disabledBackgroundColor: Colors.white,
                                backgroundColor: AppColor.accentCyan,
                                fixedSize: Size(200.w, 50.h),
                                padding: EdgeInsets.all(10.r)),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FloatingBar(),
                                ),
                              );
                            },
                            child: const Text(
                              'VIEW PORTFOLIO',
                              style: TextStyle(
                                color: AppColor.bgDark,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
