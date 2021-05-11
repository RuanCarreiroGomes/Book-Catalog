import 'dart:ffi';
import 'package:projeto/cart.dart';
import 'package:projeto/components/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login_page.dart';
import '../main.dart';
import '../purchased.dart';

class Highlights extends StatelessWidget {
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
                        'Destaques',
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
                        'Órfãos do Eldorado',
                        'https://images-na.ssl-images-amazon.com/images/I/41IHtnZ9i4L._SX331_BO1,204,203,200_.jpg',
                        'Milton Hatoum',
                        'RS 45,00'),
                  ),
                  Book(
                      'Os detetives do Prédio Azul',
                      'https://images-na.ssl-images-amazon.com/images/I/51gUno4uSZL._SX367_BO1,204,203,200_.jpg',
                      'Flávia Lins E Silva',
                      'RS 20,00'),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 15),
                    child: Book(
                        'Deus Em Pessoa',
                        'https://images-na.ssl-images-amazon.com/images/I/51PB96uqBbL._SX363_BO1,204,203,200_.jpg',
                        'Marc-antoine Mathieu',
                        'RS 63,00'),
                  ),
                  Book(
                      'Dom Casmurro',
                      'https://images-na.ssl-images-amazon.com/images/I/51PjgRe58sL._SX352_BO1,204,203,200_.jpg',
                      'Machado de Assis',
                      'RS 63,00'),
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
