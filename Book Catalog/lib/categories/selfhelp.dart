import 'dart:ffi';
import 'package:projeto/cart.dart';
import 'package:projeto/components/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login_page.dart';
import '../main.dart';
import '../purchased.dart';

class Selfhelp extends StatelessWidget {
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
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 8.0, bottom: 2.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Autoajuda',
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
                        'Atitude Mental Positiva',
                        'https://play-lh.googleusercontent.com/0wLQ6TmkAOCCOPe9afMCQKKX-mw9T3CpZO0jbBynMLmfsD4JVbpuKC4NDRMHWz_M6LxeporHMc_F=s200-rw',
                        'Napoleon Hill',
                        'RS 18,99'),
                  ),
                  Book(
                      'Quebrando o Hábito',
                      'https://play-lh.googleusercontent.com/7lezJnA4vfIz-hdvvlecv9ScYG680f_PdSorsc12do0f2Bua8-OeCzp68B8g-AMu3HQZjrvSE6xOmQ=s200-rw',
                      'Dr. Joe Dispenza',
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
                        'Mentes Fantásticas',
                        'https://play-lh.googleusercontent.com/FHlE4trsJZmLqinmZsqN9sR6cAp1f5F42Du_rvrogsAqYB_zg8ssWjoNmknSb_4kFB0555KGBnzedA=s200-rw',
                        'Alberto Dell Isola',
                        'RS 10,99'),
                  ),
                  Book(
                      'Magnetismo Pessoal',
                      'https://play-lh.googleusercontent.com/RRF_sN4sUQxBKa_xnuMwaKrJ8XRVFuWE79apa5uyF9-5WYX9WgTHyJSnboJwZgJ3e_NySq__1kTX8g=s200-rw',
                      'Heitor Durville',
                      'RS 13,00'),
                ],
              ),
            ),
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
