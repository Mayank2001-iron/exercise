import 'package:exercise/home_page.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex=0;

  List<Widget> page = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex= index;
          });
        },
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book_sharp),label: "Learn"),
          BottomNavigationBarItem(icon: Icon(Icons.square),label: "Hub"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.supervisor_account),label: "Profile"),
        ] 
        ),

        body: page[currentIndex],
    );
  }
}