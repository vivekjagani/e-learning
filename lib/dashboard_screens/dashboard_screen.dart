import 'package:e_learning/dashboard_screens/screens/books/books_list.dart';
import 'package:e_learning/dashboard_screens/screens/faculties/faculties_list_screen.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'screens/all cource/all_cource.dart';
import 'screens/home_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List pages = [
      const HomeScreen(),
      const AllCource(),
      const BooksList(),
      const FacultiesListScreen(),
    ];

    return Scaffold(
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 100,
          child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              // backgroundColor: Colors.amber,
              unselectedItemColor: appBlackColor,
              selectedItemColor: appBlackColor,
              currentIndex: selectedIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.catching_pokemon_sharp),
                    label: 'All Course'),
                BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Books'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'faculties')
              ]),
        ),
      ),
    );
  }
}
