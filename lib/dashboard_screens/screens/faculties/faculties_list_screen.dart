import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'faculties.dart';

class FacultiesListScreen extends StatelessWidget {
  const FacultiesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Faculties",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FacultiesScreen(
                          email: facultiesData[index].email,
                          name: facultiesData[index].name,
                          number: facultiesData[index].number,
                        ),
                      ));
                },
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 220, 220, 220)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100]),
                            child: const Icon(
                              Icons.person,
                              size: 100,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name : ${facultiesData[index].name}'),
                            Text(
                                'Number : ${facultiesData[index].number.toString()}'),
                          ],
                        )),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: facultiesData.length),
    );
  }
}
