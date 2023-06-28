import 'package:colb_progect/blocs/bloc_exports.dart';
import 'package:colb_progect/screens/home_screen.dart';
import 'package:colb_progect/widgets/custom_button.dart';
import 'package:colb_progect/widgets/step_introduction/fifth_step_introduction_content.dart';
import 'package:colb_progect/widgets/step_introduction/fourth_step_introduction_content.dart.dart';
import 'package:colb_progect/widgets/step_introduction/second_step_introduction_content.dart';
import 'package:colb_progect/widgets/step_introduction/third_step_introduction_content.dart';
import 'package:colb_progect/widgets/step_introduction/zero_step_introduction_content.dart';
import 'package:flutter/material.dart';

import '../widgets/step_introduction/first_step_introduction_content.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);
  static const id = 'introduction_screen';


  @override
  Widget build(BuildContext context) {

    List<dynamic> pageIntroduction = [
      const ZeroStepIntroductionContent(),
      const FirstStepIntroductionContent(),
      const SecondStepIntroductionContent(),
      const ThirdStepIntroductionContent(),
      const FourthStepIntroductionContent(),
      const FifthStepIntroductionContent()
    ];

    return Scaffold(
      body: BlocBuilder<IntroductionBloc, IntroductionState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: state.stepIntroduction > 0 ? IconButton(
                onPressed: () {
                  context.read<IntroductionBloc>().add(PreviousStepIntroduction());
                },
                icon: const Icon(Icons.arrow_back_ios),
              ) : null,
            ),
            body: Center(
              child: SafeArea(
                child: Column(
                  children: [
                    pageIntroduction[state.stepIntroduction],
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 11,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index){
                          return Container(
                            margin: EdgeInsets.only(left: index != 0 ? 10 : 0),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: state.stepIntroduction == index ? const Color(0xff2C3A42) : Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                border: Border.all(color: const Color(0xff2C3A42), width: 1)
                            ),
                          );
                        },
                      ),
                    ),
                    
                    state.stepIntroduction != 5 ? CustomButton(width: 120, height: 25, text: 'Продолжить', onPressed: () {context.read<IntroductionBloc>().add(NextStepIntroduction());}) :
                    CustomButton(width: 120, height: 25, text: 'Завершить', onPressed: () {
                      context.read<IntroductionBloc>().add(FinishIntroduction());
                      Navigator.of(context)?.pushReplacementNamed(HomeScreen.id);
                    }),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
