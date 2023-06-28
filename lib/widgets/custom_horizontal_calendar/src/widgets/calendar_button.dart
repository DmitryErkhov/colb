import 'package:colb_progect/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class CalendarButton extends StatelessWidget {
  const CalendarButton({
    Key? key,
    required this.textColor,
    required this.backgroundColor,
    required this.onCalendarPressed,
  }) : super(key: key);

  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onCalendarPressed;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      //height: (height / 150) * 10,
      color: Colors.white,

      child: IconButton(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        icon: Icon(
          Icons.calendar_today,
          color: Color(0xff2C3A42),
          size: 18.0,
        ),
        onPressed: onCalendarPressed,
      ),
    );
  }
}