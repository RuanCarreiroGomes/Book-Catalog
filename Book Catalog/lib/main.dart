import 'package:flutter/material.dart';
import 'package:projeto/cart.dart';
import 'package:projeto/categories/education.dart';
import 'package:projeto/categories/horror.dart';
import 'package:projeto/categories/selfhelp.dart';
import 'package:projeto/components/book.dart';
import 'package:projeto/categories/highlights.dart';
import 'package:projeto/login_page.dart';
import 'package:projeto/purchased.dart';
import 'categories/action.dart';
import 'categories/highlights.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livraria'),
        elevation: 10,
      ),
      body: ListView(
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
                  IconButton(
                      icon: Icon(Icons.arrow_forward_sharp, color: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Highlights();
                          }),
                        );
                      }),
                ]),
          ),
          Container(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Book(
                      'Órfãos do Eldorado',
                      'https://images-na.ssl-images-amazon.com/images/I/41IHtnZ9i4L._SX331_BO1,204,203,200_.jpg',
                      'Milton Hatoum',
                      'RS 45,00'),
                  Book(
                      'Os detetives do Prédio Azul',
                      'https://images-na.ssl-images-amazon.com/images/I/51gUno4uSZL._SX367_BO1,204,203,200_.jpg',
                      'Flávia Lins E Silva',
                      'RS 20,00'),
                  Book(
                      'Deus Em Pessoa',
                      'https://images-na.ssl-images-amazon.com/images/I/51PB96uqBbL._SX363_BO1,204,203,200_.jpg',
                      'Marc-antoine Mathieu',
                      'RS 63,00'),
                  Book(
                      'Dom Casmurro',
                      'https://images-na.ssl-images-amazon.com/images/I/51PjgRe58sL._SX352_BO1,204,203,200_.jpg',
                      'Machado de Assis',
                      'RS 63,00'),
                  Book(
                      'Dragão Negro',
                      'https://images-na.ssl-images-amazon.com/images/I/51ZXGmsIRLL._SX350_BO1,204,203,200_.jpg',
                      'Bernardo Santana',
                      'RS 69,00'),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 80.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ação',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.arrow_forward_sharp, color: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Acting();
                          }),
                        );
                      }),
                ]),
          ),
          Container(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Book(
                      'Warriors',
                      'https://books.google.com/books/publisher/content/images/frontcover/nRnQDwAAQBAJ?fife=w200-h300',
                      'Erin Hunter',
                      'RS 10,99'),
                  Book(
                      'The Outcasts',
                      'https://books.google.com/books/content/images/frontcover/Glgjtk5gpgEC?fife=w200-h300',
                      'Flávia Lins E Silva',
                      'RS 7,99'),
                  Book(
                      'Percy Jackson',
                      'https://books.google.com/books/content/images/frontcover/b2Wtjqjy8CwC?fife=w200-h300',
                      'Marc-antoine Mathieu',
                      'RS 7,99'),
                  Book(
                      'Mortal Engines',
                      'https://books.google.com/books/content/images/frontcover/wloYU5rD4vgC?fife=w200-h300',
                      'Philip Reeve',
                      'RS 63,00'),
                  Book(
                      'Demon Thief',
                      'https://books.google.com/books/content/images/frontcover/zIS72HMAVeAC?fife=w200-h300',
                      'Darren Shan',
                      'RS 79,00'),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 58.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Educação',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.arrow_forward_sharp, color: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Education();
                          }),
                        );
                      }),
                ]),
          ),
          Container(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Book(
                      'A Estratégia No Xadrez',
                      'https://books.google.com/books/publisher/content/images/frontcover/JdqhDwAAQBAJ?fife=w200-h300',
                      'Danilo Soares Marques',
                      'RS 15,00'),
                  Book(
                      'Chemistry',
                      'https://books.google.com/books/publisher/content/images/frontcover/QABCDAAAQBAJ?fife=w200-h300',
                      'John T. Moore',
                      'RS 80,00'),
                  Book(
                      'Ways of Learning',
                      'https://books.google.com/books/publisher/content/images/frontcover/ae80DwAAQBAJ?fife=w200-h300',
                      'Alan Pritchard',
                      'RS 70,99'),
                  Book(
                      'Professional Learning',
                      'https://books.google.com/books/content/images/frontcover/max6mtKGGHYC?fife=w200-h300',
                      'Margery B. Ginsberg',
                      'RS 43,00'),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 58.0),
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
                  IconButton(
                      icon: Icon(Icons.arrow_forward_sharp, color: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Selfhelp();
                          }),
                        );
                      }),
                ]),
          ),
          Container(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Book(
                      'Atitude Mental Positiva',
                      'https://play-lh.googleusercontent.com/0wLQ6TmkAOCCOPe9afMCQKKX-mw9T3CpZO0jbBynMLmfsD4JVbpuKC4NDRMHWz_M6LxeporHMc_F=s200-rw',
                      'Napoleon Hill',
                      'RS 18,99'),
                  Book(
                      'Quebrando o Hábito',
                      'https://play-lh.googleusercontent.com/7lezJnA4vfIz-hdvvlecv9ScYG680f_PdSorsc12do0f2Bua8-OeCzp68B8g-AMu3HQZjrvSE6xOmQ=s200-rw',
                      'Dr. Joe Dispenza',
                      'RS 20,00'),
                  Book(
                      'Mentes Fantásticas',
                      'https://play-lh.googleusercontent.com/FHlE4trsJZmLqinmZsqN9sR6cAp1f5F42Du_rvrogsAqYB_zg8ssWjoNmknSb_4kFB0555KGBnzedA=s200-rw',
                      'Alberto Dell Isola',
                      'RS 10,99'),
                  Book(
                      'Magnetismo Pessoal',
                      'https://play-lh.googleusercontent.com/RRF_sN4sUQxBKa_xnuMwaKrJ8XRVFuWE79apa5uyF9-5WYX9WgTHyJSnboJwZgJ3e_NySq__1kTX8g=s200-rw',
                      'Heitor Durville',
                      'RS 13,00'),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 58.0),
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
                  IconButton(
                      icon: Icon(Icons.arrow_forward_sharp, color: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Horror();
                          }),
                        );
                      }),
                ]),
          ),
          Container(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Book(
                      'Colder Omnibus',
                      'https://books.google.com/books/publisher/content/images/frontcover/LR05DwAAQBAJ?fife=w200-h300',
                      'Paul Tobin',
                      'RS 28,99'),
                  Book(
                      'Bloodborne',
                      'https://books.google.com/books/publisher/content/images/frontcover/dV9jDwAAQBAJ?fife=w200-h300',
                      'Ales Kot',
                      'RS 22,00'),
                  Book(
                      'Little Nightmares',
                      'https://books.google.com/books/publisher/content/images/frontcover/HXgrDwAAQBAJ?fife=w200-h300',
                      'John Shackleton',
                      'RS 9,99'),
                  Book(
                      'Creepy Archives',
                      'https://books.google.com/books/content/images/frontcover/t6lej9kykgIC?fife=w200-h300',
                      'Various',
                      'RS 27,00'),
                ],
              )),
        ],
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

class Purchased extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
