import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class FourthStepIntroductionContent extends StatelessWidget {
  const FourthStepIntroductionContent({Key? key}) : super(key: key);

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
              child: SvgPicture.asset("images/plans.svg", width: 200, height: 200,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text('Планы', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text('Ведите список Ваших планов чтобы ничего не забыть. Отмечайте уже выполненные задачи, которые были запланированы чтобы отслеживать свою продуктивность', style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}