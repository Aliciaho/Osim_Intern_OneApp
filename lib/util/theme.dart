import 'package:flutter/material.dart';

ThemeData basicTheme() {
  final base = ThemeData.light();

  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        //normal text bold
        headline1: base.headline1.copyWith(
            fontFamily: 'PTSans',
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold),
        // Big number bold
        headline2: base.headline2.copyWith(
            fontFamily: 'PTSans',
            fontSize: 60,
            color: Colors.black,
            fontWeight: FontWeight.bold),
        // Mid number bold
        headline3: base.headline3.copyWith(
            fontFamily: 'PTSans',
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold),
        //Range text
        headline4: base.headline4.copyWith(
            fontFamily: 'PTSans',
            fontSize: 20,
            color: Colors.lightGreen[700],
            fontWeight: FontWeight.bold),
        headline5: base.headline5.copyWith(
          // normal body 3
          fontFamily: 'PTSans',
          fontSize: 16,
          color: Colors.black,
        ),
        headline6: base.headline6.copyWith(
            // Product name
            fontFamily: 'PTSans',
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold),
        bodyText1: base.bodyText1.copyWith(
            // normal body 1
            fontFamily: 'PTSans',
            fontSize: 18,
            color: Colors.black),
        bodyText2: base.bodyText2.copyWith(
          // normal body 2
          fontFamily: 'PTSans',
          fontSize: 20,
          color: Colors.black,
        ),
        button: base.button.copyWith(
            fontFamily: 'PTSans',
            fontSize: 20,
            color: Colors.grey[200],
            fontWeight: FontWeight.bold));
  }

  AppBarTheme _basicAppBarTheme(AppBarTheme base) {
    return base.copyWith(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black));
  }

  OutlinedButtonThemeData _basicOutlinedbuttonTheme() {
    return OutlinedButtonThemeData(
        style: ButtonStyle(
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15)),
            shape: MaterialStateProperty.all(StadiumBorder()),
            backgroundColor: MaterialStateProperty.all(Colors.black)));
  }

  return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      appBarTheme: _basicAppBarTheme(base.appBarTheme),
      outlinedButtonTheme: _basicOutlinedbuttonTheme());
}
