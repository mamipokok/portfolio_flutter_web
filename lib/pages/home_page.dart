import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:portopolio_flutter_web/themes/app_color.dart';
import 'package:portopolio_flutter_web/widgets/sizedbox_widget.dart';

class HomePage extends StatelessWidget {
  final ScrollController controller;
  const HomePage({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          controller: controller,
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
            Container(
              width: double.infinity,
              height: 925.h,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Lottie.asset(
                      //   'assets/animation/vacation.json',
                      //   width: 300.w,
                      //   height: 300.h,
                      // ),
                    ],
                  ),
                  Positioned(
                    top: 200.h,
                    left: 80.w,
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
                  // Positioned(
                  //   top: 200.h,
                  //   left: 750.w,
                  //   child: Lottie.asset(
                  //     'assets/animation/business_man.json',
                  //     width: 600.w,
                  //     height: 600.h,
                  //   ),
                  // )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1000.h,
              color: AppColor.bgDark,
            ),
          ],
        ));
  }
}
