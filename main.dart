import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final List<Map<String, dynamic>> items = [
    {
      'name': 'Comida',
      'image': 'assets/images/food.jpg',
      'category': 'food',
    },
    {
      'name': 'Animal',
      'image': 'assets/images/animal.jpg',
      'category': 'animal',
    },
    {
      'name': 'Lugar',
      'image': 'assets/images/place.jpg',
      'category': 'place',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listado ejercicio 1'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(items[index]['image']),
            title: Text(
              items[index]['name'],
              style: TextStyle(
                fontFamily: getFontFamily(items[index]['category']),
                fontSize: 20,
              ),
            ),
          );
        },
      ),
    );
  }

  String getFontFamily(String category) {
    switch (category) {
      case 'food':
        return 'OpenSans';
      case 'animal':
        return 'Lato';
      case 'place':
        return 'Ubuntu';
      default:
        return 'Sans';
    }
  }
}


