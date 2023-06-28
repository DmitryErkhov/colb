import 'package:flutter/material.dart';

enum AppTheme{
  lightTheme,
  darkTheme,
}

class AppThemes {
  static final appThemeData = {
    AppTheme.darkTheme: ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      backgroundColor: const Color(0xFF212121),
      dividerColor: Colors.black54,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      textTheme: const TextTheme(
        subtitle1: TextStyle(color: Colors.white),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.grey, unselectedItemColor: Colors.white),
    ),

    //
    //

    AppTheme.lightTheme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff2C3A42),
        )
      ),
      fontFamily: "Inner",

      primaryColor: Color(0xff2C3A42),
      brightness: Brightness.light,
      //backgroundColor: const Color(0xFFE5E5E5),
      dividerColor: const Color(0xffFFFFFF),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Color(0xff2C3A42)),
        ),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Color(0xff2C3A42), fontFamily: "Inner", fontWeight: FontWeight.w900, fontSize: 20,),
        bodyLarge: TextStyle(color: Color(0xff2C3A42), fontFamily: "Inner", fontSize: 11, fontStyle: FontStyle.italic),
        bodySmall: TextStyle(color: Color(0xff2C3A42), fontFamily: "Inner", fontSize: 11, fontStyle: FontStyle.italic, fontWeight: FontWeight.w900,),
        //subtitle1: TextStyle(color: Colors.black),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
    ),
  };
}