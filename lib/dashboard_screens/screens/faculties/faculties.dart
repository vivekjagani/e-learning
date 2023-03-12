import 'package:flutter/material.dart';

class FacultiesScreen extends StatelessWidget {
  String name;
  int number;
  String email;

  FacultiesScreen({Key? key,required this.name,required this.email,required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Faculties',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.person,size: 200,),
          Text('Name : ${this.name}'),
          Text('Number : ${this.number.toString()}'),
          Text('Email : ${this.email}'),
          ]),
      ),
    );
  }
}
