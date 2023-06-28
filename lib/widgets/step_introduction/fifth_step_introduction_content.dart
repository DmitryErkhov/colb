import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class FifthStepIntroductionContent extends StatelessWidget {
  const FifthStepIntroductionContent({Key? key}) : super(key: key);

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
              child: SvgPicture.asset("images/statistics.svg", width: 200, height: 200,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text('Статистика и настройка', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text('В данном разделе находится статистика по Вашим планам, финансовому учету. На их основе можно сделать выводы для себя. После основной информации следуют настройки приложения, в них Вы всегда сможете пройти данное обучение заново', style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
