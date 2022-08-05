import 'package:flutter/material.dart';
import 'package:listagem_crypto/main.dart';

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  int opcaoSelecionada = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Warren(),
    Wallets(),
    Transactions(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      opcaoSelecionada = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(opcaoSelecionada),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Carteiras',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Movimentações',
          ),
        ],
        currentIndex: opcaoSelecionada,
        backgroundColor: Colors.white,
        fixedColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        onTap: (opcao) {
          setState(() {
            opcaoSelecionada = opcao;
          });
        },
      ),
    );
  }
}
