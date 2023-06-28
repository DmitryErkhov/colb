import 'dart:async';
import 'package:colb_progect/screens/home_screen.dart';
import 'package:colb_progect/screens/introduction_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../blocs/bloc_exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: BlocBuilder<IntroductionBloc, IntroductionState>(
        builder: (context, state) {
          if(state.introductionFinish) {
            //
            // Блок перехода на основную часть
            //
            Timer(const Duration(seconds: 2), () {
              if(mounted){
                Navigator.of(context)?.pushReplacementNamed(HomeScreen.id);
              }
            });
            return SafeArea(
              child: Center(
                //child: Text('${state.introductionFinish} ${state.stepIntroduction} шщ'),
                child: Image.asset("images/logo-1-0.png"),
              ),
            );
            //
            // Конец блока
            //
          } else {
            //
            // Блок перехода на введение
            //
            Timer(const Duration(seconds: 2), () async {

              if(mounted){
                Navigator.of(context)?.pushReplacementNamed(IntroductionScreen.id);
              }

            });
            return SafeArea(
              child: Center(

                //child: Text('${state.introductionFinish} ${state.stepIntroduction} уд'),
                child: Image.asset("images/logo-1-0.png"),
              ),
            );
            //
            // Конец блока
            //
          }
        },
      ),
    );
  }
}
