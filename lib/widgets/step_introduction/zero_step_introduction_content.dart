import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ZeroStepIntroductionContent extends StatelessWidget {
  const ZeroStepIntroductionContent({Key? key}) : super(key: key);

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
              child: Text('Добро пожаловать в Colb!', style: Theme.of(context).textTheme.titleLarge,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SvgPicture.asset("images/colb.svg", width: 200, height: 200,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text('Colb - приложение для планирования вашего дня', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text('Изменяйте, добавляйте ваши задачи, расписание в любой момент', style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
