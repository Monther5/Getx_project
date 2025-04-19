import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final String? TextButton;
  final Function()? onPressed;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  const MainButtonWidget({
    super.key,
    this.TextButton,
    this.onPressed,
    this.color,
    this.padding,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.black,
        padding: padding ?? EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        TextButton!,
        style: TextStyle(fontSize: fontSize ?? 16, color: Colors.white),
      ),
    );
  }
}
