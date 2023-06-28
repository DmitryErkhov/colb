import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ThirdStepIntroductionContent extends StatelessWidget {
  const ThirdStepIntroductionContent({Key? key}) : super(key: key);

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
              child: SvgPicture.asset("images/meetings-introduction.svg", width: 200, height: 200,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text('Встречи', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text('Отмечайте встречи о которых договорились чтобы не забыть. Изменяйте, удаляйте данные о событиях чтобы Ваш график был верным', style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}