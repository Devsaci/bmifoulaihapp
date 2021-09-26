import 'package:bmifoulaihapp/home.dart';
import 'package:bmifoulaihapp/result.dart';
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
          headline2: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        canvasColor: Colors.black,
        primarySwatch: Colors.teal,
      ),
      home: const Result(
        result: 20.231245,
        isMale: true,
        age: 22,
      ),
    );
  }
}
