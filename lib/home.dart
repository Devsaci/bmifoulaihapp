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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    m2GestureDetector(context, 'male'),
                    const SizedBox(
                      width: 50,
                    ),
                    m2GestureDetector(context, 'female'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded m1GestureDetector(BuildContext context, String type) {
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => isMale = (type == 'male') ? true : false),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (isMale && type == 'male') || (!isMale && type == 'female')
                ? Colors.teal
                : Colors.blueGrey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(type == 'male' ? Icons.male : Icons.female, size: 90),
              const SizedBox(height: 15),
              Text(
                type == 'male' ? 'Male' : 'Female',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Expanded m2GestureDetector(BuildContext context, String type) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: (isMale && type == 'male') || (!isMale && type == 'female')
              ? Colors.teal
              : Colors.blueGrey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(type == 'male' ? Icons.male : Icons.female, size: 90),
            const SizedBox(height: 15),
            Text(
              type == 'male' ? 'Male' : 'Female',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }

}
