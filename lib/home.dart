import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = true;
  double heightVal = 170;

  int weight = 55;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Body Mass Index"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              m1GestureDetector(context, 'male'),
              const SizedBox(
                width: 50,
              ),
              m1GestureDetector(context, 'female'),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector m1GestureDetector(BuildContext context, String type) {
    return GestureDetector(
      onTap: () => setState(() => isMale = (type == 'male') ? true : false),
      child: Expanded(
          child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: (isMale && type == 'male') || (!isMale && type == 'female')
              ? Colors.teal
              : Colors.blueGrey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              type == 'male' ? Icons.male : Icons.female,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              type == 'male' ? 'MALE' : 'FEMALE',
              style: Theme.of(context).textTheme.headline2,
            )
          ],
        ),
      )),
    );
  }
}
