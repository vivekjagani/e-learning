import 'dart:async';

import 'package:flutter/material.dart';

import '../authantication_screen/login_screen.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('asset/logo.jpeg'),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Learnerz',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
