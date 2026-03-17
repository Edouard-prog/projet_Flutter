import 'package:flutter/material.dart';
import 'package:mini_chat/pages/addContact.dart';
import 'package:mini_chat/pages/chats.dart';
import 'package:mini_chat/pages/homePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int _curentIndex = 0;
  
  setCurentIndex(int index){
    setState(() {
      _curentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: [
              Text("Acceuil"),
              Text("Chats"),
              Text("Ajouter contact")
            ][_curentIndex],
            backgroundColor: Colors.purple,
          ),
          body: [
            HomePage(),
            Chats(),
            Addcontact()
          ][_curentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _curentIndex,
            onTap: (index) => setCurentIndex(index),
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.deepPurple,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Acceuil'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chats'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: 'Ajouter'
              )
            ],
          )
      ),
    );
  }
}



