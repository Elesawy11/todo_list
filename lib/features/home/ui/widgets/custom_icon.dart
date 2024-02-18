import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key, required this.icon, this.onPressed,
  });

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.05),
          shape: BoxShape.rectangle),
      child: IconButton(
        onPressed: onPressed,
        icon:  Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
