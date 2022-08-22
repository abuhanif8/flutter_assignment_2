import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
            ),

          ),
        ),

        textTheme: TextTheme(


          headline5: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            fontSize: 20,
          ),
        ),

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}
