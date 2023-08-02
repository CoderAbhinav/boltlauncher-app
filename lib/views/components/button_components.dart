
import 'package:flutter/material.dart';

class AppFilledButton extends StatelessWidget {
  AppFilledButton({Key? key, this.child, this.height, this.width, this.borderRadius, this.buttonColor}) : super(key: key);
  double? width = 80, height = 48, borderRadius = 8;
  Widget? child;
  Color? buttonColor;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: height ?? 48,
        width: width ?? 80,
        decoration: BoxDecoration(
            color: buttonColor ?? Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(borderRadius ?? 8)
        ),
        child: child,
      ),
    );
  }
}


class AppFilledButtonLight extends StatelessWidget {
  AppFilledButtonLight({Key? key, this.child, this.height, this.width, this.borderRadius}) : super(key: key);
  double? width = 80, height = 48, borderRadius = 8;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 48,
      width: width ?? 80,
      decoration: BoxDecoration(
          color: const Color(0xffF8F8FA).withOpacity(0.2),
          border: Border.all(color: Theme.of(context).primaryColor, width: 0.5),
          borderRadius: BorderRadius.circular(borderRadius ?? 8)
      ),
      child: child,
    );
  }
}