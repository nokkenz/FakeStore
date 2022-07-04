import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[600],
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc),
          )
        ],
      ),
    );
  }
}
