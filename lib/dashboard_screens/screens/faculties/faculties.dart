import 'dart:io';

import 'package:flutter/material.dart';

class FacultiesScreen extends StatelessWidget {
  String name;
  int number;
  String email;
  String? image;

  FacultiesScreen(
      {Key? key,
      required this.name,
      required this.email,
      required this.number,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Faculties',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          image!.isEmpty
              ? const Icon(
                  Icons.person,
                  size: 200,
                )
              : Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  height: 300,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.file(
                      File(image ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          Text('Name : $name'),
          Text('Number : ${number.toString()}'),
          Text('Email : $email'),
        ]),
      ),
    );
  }
}
