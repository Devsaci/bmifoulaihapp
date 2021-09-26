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
          child: Expanded(
            child: GestureDetector(
              onTap: () {

              },
              child: Container(
                  color: Colors.blueGrey,
                  // decoration: const BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.male),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Male',
                        style: Theme.of(context).textTheme.headline2,
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
