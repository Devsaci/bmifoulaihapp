import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Body Mass Index"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.male),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'MALE',
                    style: Theme.of(context).textTheme.headline2,
                  )
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
