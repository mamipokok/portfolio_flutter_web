import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portopolio_flutter_web/themes/app_color.dart';

class HoverIcon extends StatefulWidget {
  final dynamic icon; // bisa IconData atau Brands.*
  final VoidCallback onTap;
  final Color? color;

  const HoverIcon({
    super.key,
    required this.icon,
    required this.onTap,
    this.color,
  });

  @override
  State<HoverIcon> createState() => _HoverIconState();
}

class _HoverIconState extends State<HoverIcon> {
  bool _isHovered = false;

  bool get _isBrand => widget.icon is String; // untuk cek Brands

  @override
  Widget build(BuildContext context) {
    final iconColor = widget.color ?? Colors.white;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          padding: EdgeInsets.all(_isHovered ? 10 : 8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                _isHovered ? Colors.black.withOpacity(0.2) : Colors.transparent,
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ]
                : [],
          ),
          child: AnimatedScale(
            scale: _isHovered ? 1.1 : 1.0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: AppColor.textPrimary,
              child: _isBrand
                  ? Brand(
                      widget.icon,
                      size: 30,
                    )
                  : Icon(
                      widget.icon,
                      color: iconColor,
                      size: 30,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
