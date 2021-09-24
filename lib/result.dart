import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key, required this.result, required this.isMale, required this.age})
      : super(key: key);
  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase{
    String resultText = '';
    //Conditions Parameters
    if(result >= 30)  resultText = 'Obese';
    else if(result >= 30)  resultText = 'Obese';
    else if(result > 25 && result < 30)  resultText = 'Overweight';
    else  resultText = 'Thin';

    return resultText;
  }


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
          children: <Widget>[
            Text(
              "Gender :   ${isMale ? 'Male' : 'Female'}",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Result :   ${result.toStringAsFixed(4)}",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Healhiness :   $resultPhrase",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "age :   $age",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
