import 'package:colb_progect/screens/home_screen.dart';
import 'package:colb_progect/screens/introduction_screen.dart';
import 'package:colb_progect/screens/meetings_screen.dart';
import 'package:colb_progect/screens/plans_screen.dart';
import 'package:colb_progect/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){

        // Экран загрузки
      case SplashScreen.id:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

        // Экран введения
      case IntroductionScreen.id:
        return MaterialPageRoute(builder: (_) => const IntroductionScreen());
        //

      case HomeScreen.id:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case MeetingsScreen.id:
        return MaterialPageRoute(builder: (_) => const MeetingsScreen());

      case PlansScreen.id:
        return MaterialPageRoute(builder: (_) => const PlansScreen());

      default:
        return null;
    }
  }
}