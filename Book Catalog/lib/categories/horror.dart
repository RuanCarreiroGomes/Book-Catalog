import 'dart:ffi';
import 'package:projeto/cart.dart';
import 'package:projeto/components/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login_page.dart';
import '../main.dart';
import '../purchased.dart';

class Horror extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livraria'),
        elevation: 10,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Terror',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ]),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 5),
                    child: Book(
                        'Colder Omnibus',
                        'https://books.google.com/books/publisher/content/images/frontcover/LR05DwAAQBAJ?fife=w200-h300',
                        'Paul Tobin',
                        'RS 28,99'),
                  ),
                  Book(
                      'Bloodborne',
                      'https://books.google.com/books/publisher/content/images/frontcover/dV9jDwAAQBAJ?fife=w200-h300',
                      'Ales Kot',
                      'RS 22,00'),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 15),
                    child: Book(
                        'Little Nightmares',
                        'https://books.google.com/books/publisher/content/images/frontcover/HXgrDwAAQBAJ?fife=w200-h300',
                        'John Shackleton',
                        'RS 9,99'),
                  ),
                  Book(
                      'Creepy Archives',
                      'https://books.google.com/books/content/images/frontcover/t6lej9kykgIC?fife=w200-h300',
                      'Various',
                      'RS 27,00'),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) {
            return HomePage();
          }));
        },
        child: Icon(
          Icons.arrow_back,
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(190),
                  child: Image.network(
                      'https://www.infomoney.com.br/wp-content/uploads/2019/06/steve-jobs-2010.jpg?fit=900%2C882&quality=50&strip=all')),
              accountName: Text('Visitante'),
              accountEmail: Text('vistante@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Tela principal'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Categorias'),
              subtitle: Text('Nosso estoque'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Conta'),
              subtitle: Text('Logue em sua conta'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_rounded),
              title: Text('Carrinho'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Cart();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Livros comprados'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Purchasedd();
                  }),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
