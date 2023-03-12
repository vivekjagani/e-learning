import 'package:flutter/material.dart';

class AllCource extends StatelessWidget {
  const AllCource({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('All Cource',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
      ),
    );
  }
}