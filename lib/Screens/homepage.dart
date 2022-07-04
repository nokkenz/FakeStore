import 'package:flutter/material.dart';
import 'package:store_app/Screens/store.dart';
import 'package:store_app/Screens/userpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static var _currentIndex = 0;
  static const List options = <Widget>[
    Store(),
    Text('2'),
    UserPage(),
  ];

  void _onTapIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.store),
            label: 'Loja',
            backgroundColor: Colors.lightGreen[50],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_bag),
            label: 'Sacola',
            backgroundColor: Colors.lightGreen[50],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Minha Conta',
            backgroundColor: Colors.lightGreen[50],
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onTapIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.lightGreen[700],
        unselectedItemColor: Colors.lightGreen[300],
      ),
      body: Center(
        child: options.elementAt(_currentIndex),
      ),
    );
  }
}
