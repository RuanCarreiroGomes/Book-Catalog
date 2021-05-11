import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';
import 'main.dart';

class Purchasedd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livraria'),
        elevation: 10,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Livros Comprados:',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Você ainda não possui livros comprados!')
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
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Livros comprados'),
              onTap: () {},
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
