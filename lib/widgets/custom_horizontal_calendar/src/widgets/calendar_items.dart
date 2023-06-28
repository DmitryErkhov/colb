import 'package:flutter/material.dart';
import 'package:colb_progect/widgets/custom_horizontal_calendar/custom_horizontal_calendar.dart';

class CalendarItems extends StatelessWidget {
  CalendarItems({
    Key? key,
    required this.index,
    required this.startDate,
    required this.initialDate,
    required this.selectedDate,
    required this.textColor,
    required this.selectedColor,
    required this.backgroundColor,
    required this.onDatePressed,
  }) : super(key: key);

  final int index;
  final DateTime startDate;
  final DateTime initialDate;
  final DateTime selectedDate;
  final Color textColor;
  final Color selectedColor;
  final Color backgroundColor;
  final VoidCallback onDatePressed;

  @override
  Widget build(BuildContext context) {
    DateTime date = startDate.add(Duration(days: index));
    int diffDays = date.difference(selectedDate).inDays;
    int checkPastDate = date.difference(initialDate).inDays;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          width: (width / 100) * 12.5,
          decoration: BoxDecoration(
              color: diffDays != 0 ? backgroundColor : backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: diffDays != 0 ? null : Border.all(color: const Color(0xff2C3A42), width: 2),
              boxShadow: diffDays != 0 ? null : [
                BoxShadow(
                  color: Color(0xff2C3A42),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: Offset(2, 2),
                ),
              ] ,
          ),
          alignment: Alignment.center,
          child: TextButton(
            onPressed: onDatePressed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  DateParser.getDayOfWeek(date),
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: diffDays != 0
                        ? checkPastDate >= 0
                        ? textColor
                        : Color(0xff2C3A42).withOpacity(0.5)
                        : Color(0xff2C3A42),
                    fontSize: 10.0,
                  ),
                ),
                SizedBox(height: 2.0),
                Text(
                  DateParser.getDayOfMonth(date),
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: diffDays != 0
                        ? checkPastDate >= 0
                        ? textColor
                        : Color(0xff2C3A42).withOpacity(0.5)
                        : Color(0xff2C3A42),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2.0),
                diffDays != 0 ? Text(
                  DateParser.getOneMonth(date),
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: diffDays != 0
                        ? checkPastDate >= 0
                        ? textColor
                        : Color(0xff2C3A42).withOpacity(0.5)
                        : Color(0xff2C3A42),
                    fontSize: 10.0,
                  ),
                ) : SizedBox(height: 0, width: 0,)
              ],
            ),
          ),
        ),

      ],

    );
  }
}