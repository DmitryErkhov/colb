import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class FirstStepIntroductionContent extends StatelessWidget {
  const FirstStepIntroductionContent({Key? key}) : super(key: key);

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
              child: SvgPicture.asset("images/financial-accounting.svg", width: 200, height: 200,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text('Финансовый учет', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text('Ведите учет всех расходов и заработков для удобного анализа. Теперь не важно была ли оплата произведена наличным средствами или с банковской картой', style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}