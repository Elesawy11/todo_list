import 'package:flutter/material.dart';

class MainAppIcon extends StatelessWidget {
  const MainAppIcon({
    super.key,
    this.onPressed,
    required this.icon,
    this.containerColor,
    this.iconColor,
    this.iconSize,
  });
  final void Function()? onPressed;
  final IconData icon;
  final Color? containerColor;
  final Color? iconColor;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: iconSize ?? 30,
          color: iconColor ?? Colors.white,
        ),
      ),
    );
  }
}
