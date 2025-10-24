import 'package:cupertino_sidebar/cupertino_sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show DefaultTabController, Scaffold;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portopolio_flutter_web/pages/contact_page.dart';
import 'package:portopolio_flutter_web/pages/home_page.dart';
import 'package:portopolio_flutter_web/pages/project_page.dart';
import 'package:portopolio_flutter_web/pages/skills_page.dart';
import 'package:portopolio_flutter_web/themes/app_color.dart';

class FloatingBar extends StatefulWidget {
  const FloatingBar({super.key});

  @override
  State<FloatingBar> createState() => _FloatingBarState();
}

class _FloatingBarState extends State<FloatingBar> {
  bool _isVisible = true;
  double _lastOffset = 0;
  int _selectedIndex = 0;

  // ScrollController untuk setiap halaman
  final List<ScrollController> _controllers = List.generate(
    4,
    (_) => ScrollController(),
  );

  @override
  void initState() {
    super.initState();
    // Tambahkan listener di semua controller
    for (final controller in _controllers) {
      controller.addListener(() {
        final offset = controller.offset;
        if (offset > _lastOffset && _isVisible) {
          setState(() => _isVisible = false);
        } else if (offset < _lastOffset && !_isVisible) {
          setState(() => _isVisible = true);
        }
        _lastOffset = offset;
      });
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _pages = [
      HomePage(controller: _controllers[0]),
      ProjectPage(controller: _controllers[1]),
      SkillsPage(controller: _controllers[2]),
      ContactPage(controller: _controllers[3])
    ];

    return Scaffold(
      backgroundColor: AppColor.bgDark,
      body: Stack(
        children: [
          CupertinoPageScaffold(
            backgroundColor: AppColor.bgDark,
            child: _pages[_selectedIndex],
          ),

          // Floating Bar
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: _isVisible ? 30.h : -100.h,
            left: 0,
            right: 0,
            child: SafeArea(
              child: DefaultTabController(
                length: 4,
                child: CupertinoTheme(
                  data: const CupertinoThemeData(
                    brightness: Brightness.dark,
                  ),
                  child: Center(
                    child: CupertinoFloatingTabBar(
                      backgroundColor: AppColor.bgCard.withOpacity(0.95),
                      isVibrant: false,
                      onDestinationSelected: (value) {
                        setState(() {
                          _selectedIndex = value;
                        });
                      },
                      tabs: [
                        CupertinoFloatingTab(
                          child: Text(
                            'home',
                            style: TextStyle(
                              color: _selectedIndex == 0
                                  ? AppColor.textPrimary
                                  : AppColor.textMuted,
                            ),
                          ),
                        ),
                        CupertinoFloatingTab(
                          child: Text(
                            'project',
                            style: TextStyle(
                              color: _selectedIndex == 1
                                  ? AppColor.textPrimary
                                  : AppColor.textMuted,
                            ),
                          ),
                        ),
                        CupertinoFloatingTab(
                          child: Text(
                            'skills',
                            style: TextStyle(
                              color: _selectedIndex == 2
                                  ? AppColor.textPrimary
                                  : AppColor.textMuted,
                            ),
                          ),
                        ),
                        CupertinoFloatingTab(
                          child: Text(
                            'contact',
                            style: TextStyle(
                              color: _selectedIndex == 3
                                  ? AppColor.textPrimary
                                  : AppColor.textMuted,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
