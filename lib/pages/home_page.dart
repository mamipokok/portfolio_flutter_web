import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:lottie/lottie.dart';
import 'package:portopolio_flutter_web/themes/app_color.dart';
import 'package:portopolio_flutter_web/widgets/hover_icon.dart';
import 'package:portopolio_flutter_web/widgets/sizedbox_widget.dart';

class HomePage extends StatelessWidget {
  final ScrollController controller;
  const HomePage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: controller,
        children: [
          Container(
            width: double.infinity,
            height: 2775.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0A1120), // Midnight
                  Color(0xFF1E293B), // Card
                  Color(0xFF3B82F6), // Indigo accent
                  Color(0xFF0F172A), // Dark
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 850.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('scroll',
                              style: TextStyle(
                                color: AppColor.textSecondary,
                                fontSize: 25.sp,
                              )),
                          Lottie.asset('assets/animation/mouse.json',
                              width: 45.w, height: 60.h),
                          Text('down',
                              style: TextStyle(
                                color: AppColor.textSecondary,
                                fontSize: 25.sp,
                              )),
                        ],
                      ),
                    ),
                    Lottie.asset('assets/animation/background.json',
                        width: double.infinity, height: 925.h),
                  ],
                ),
                SBW(
                  w: double.infinity,
                  h: 925.h,
                  c: Stack(
                    children: [
                      Positioned(
                        child: Row(
                          children: [],
                        ),
                      ),
                      Positioned(
                        top: 200.h,
                        left: 120.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'HI ',
                                  style: TextStyle(
                                    color: AppColor.textPrimary,
                                    fontSize: 60.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'THERE! 👋',
                                  style: TextStyle(
                                    color: AppColor.accentCyan,
                                    fontSize: 60.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SBW(
                              h: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 0.w),
                              child: Row(
                                children: [
                                  Text(
                                    'I,M',
                                    style: TextStyle(
                                      color: AppColor.textPrimary,
                                      fontSize: 50.sp,
                                    ),
                                  ),
                                  Text(
                                    ' NABIL HASYA ARTUNA',
                                    style: TextStyle(
                                      color: AppColor.textSecondary,
                                      fontSize: 50.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SBW(
                              h: 20.h,
                            ),
                            Row(
                              children: [
                                // SBW(w: 80.w),
                                Text(
                                  'I am a ',
                                  style: TextStyle(
                                    color: AppColor.textPrimary,
                                    fontSize: 45.sp,
                                  ),
                                ),
                                Text(
                                  'Mobile Developer.',
                                  style: TextStyle(
                                    color: AppColor.accentCyan,
                                    fontSize: 45.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 200.h,
                        left: 750.w,
                        child: Lottie.asset(
                          'assets/animation/business_man.json',
                          width: 600.w,
                          height: 600.h,
                        ),
                      ),
                      Positioned(
                        left: 120.w,
                        bottom: 100.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                HoverIcon(
                                  icon: Brands.gmail,
                                  onTap: () {},
                                ),
                                SBW(w: 10),
                                HoverIcon(
                                  icon: Brands.gitlab,
                                  onTap: () {},
                                ),
                                SBW(w: 10),
                                HoverIcon(
                                  icon: Brands.github,
                                  onTap: () {},
                                ),
                                SBW(w: 10),
                                HoverIcon(
                                  icon: Brands.linkedin,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SBW(
                  w: double.infinity,
                  h: 925.h,
                  c: Center(
                    child: Text("Nabil Hasya Artuna"),
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
