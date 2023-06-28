import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key,required this.width, required this.height, required this.borderRadius, required this.child}) : super(key: key);
  final double width;
  final double height;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          border: Border.all(color: const Color(0xff2C3A42), width: 2),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff2C3A42),
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(2, 2),
            ),
          ]
      ),
      child: child,
    );
  }
}
