import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String name;
  final String autor;
  final String image;
  final String preco;

  Book(this.name, this.image, this.autor, this.preco);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 169,
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.symmetric(horizontal: 23),
            child: Image.network(this.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              this.name,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              this.autor,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              this.preco,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.blue,
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
