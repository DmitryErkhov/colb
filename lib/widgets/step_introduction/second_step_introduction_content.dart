import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SecondStepIntroductionContent extends StatelessWidget {
  const SecondStepIntroductionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SvgPicture.asset("images/schedule-introduction.svg", width: 200, height: 200,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text('Расписание занятий', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text('Следите за расписанием занятий в любой момент времени. Оно имеет деление по двум цветам - белая и зеленая неделя. Вся самая нужная информация в одном месте', style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}