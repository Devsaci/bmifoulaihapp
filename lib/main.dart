import 'package:bmifoulaihapp/home.dart';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w800, color: Colors.white),
            headline2: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            bodyText1: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          iconTheme: const IconThemeData(color: Colors.yellow, opacity: 1),
          canvasColor: Colors.black,
          primarySwatch: Colors.teal,
        ),
        home: const MyHomePage());
  }
}
