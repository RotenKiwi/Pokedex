import 'package:flutter/material.dart';

import 'main.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    void initState() {
      super.initState();
      navigateHome();
    }

    navigateHome() async {
      await Future.delayed(Duration(milliseconds: 1500), () {});
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MyHomePage(title: 'Roten')));
    }

    return Scaffold(
      body: Container(
        child: const Text(
          'Splash Screen',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
