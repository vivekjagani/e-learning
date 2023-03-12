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
    Timer(Duration(seconds: 2), () =>Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen(),)) );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Splesh Screen')),
    );
  }
}
