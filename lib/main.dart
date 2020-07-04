import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          '🛒 Collections',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Product('HP Pavilion 15', 1000, 'assets/images/pavilion.jpg'),
            Product('Air Force', 99, 'assets/images/airmax.jpg'),
            Product('Nike', 120, 'assets/images/nike.jpg'),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  final String _make;
  final int _price;
  final String _path;

  Product(this._make, this._price, this._path);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            this._path,
            width: 700,
            height: 400.0,
          ),
          Text(
            _make,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '\$ $_price',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.red,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                ),
                iconSize: 20.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
