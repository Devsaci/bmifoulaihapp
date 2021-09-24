import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, this.result, required this.isMale, required this.age}) : super(key: key);
final double result;
final bool isMale;
final int age;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Result",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: const <Widget>[

            Text("Male")

          ],
        ),
      )),
    );
  }
}
