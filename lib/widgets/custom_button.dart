import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.width, required this.height, required this.text, required this.onPressed}) : super(key: key);
  final double width;
  final double height;
  final String text;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
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
      child: GestureDetector(
        onTap: onPressed,
        child: Center(child: Text(text, textAlign: TextAlign.center,)),
      ),
      // child: TextButton(
      //   onPressed: onPressed,
      //   child: Text(text, style: Theme.of(context).textTheme.bodyLarge,),
      // ),
    );
  }
}

