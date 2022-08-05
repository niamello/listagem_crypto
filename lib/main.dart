import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listagem_crypto/bottomNavigationBar.dart';

void main() => runApp(FlutterApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Warren());
  }
}

class Warren extends StatefulWidget {
  const Warren({Key? key}) : super(key: key);

  @override
  State<Warren> createState() => MyHomePage();
}

class MyHomePage extends State<Warren> {
  bool _showPassword = false;
  String walletValue = 'US\$1.000,00';

  String hidevalue() {
    if (_showPassword == true) {
      return walletValue;
    } else {
      return '-----';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Carteira',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 170.0,
              ),
              Container(
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: Icon(
                          _showPassword == false
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        ),
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                            print(_showPassword);
                          });
                        },
                      ),
                    ),
                    obscureText: _showPassword == false ? true : false,
                  ),
                  width: 90),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              hidevalue(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.currency_bitcoin,
              color: Colors.grey,
              size: 24.0,
            ),
            title: Text('ETH'),
            subtitle: Text('Ethereum'),
            trailing: Text('US\$0,00'),
          ),
          ListTile(
            leading: Icon(
              Icons.currency_exchange,
              color: Colors.grey,
              size: 24.0,
            ),
            title: Text('BTC'),
            subtitle: Text('Bitcoin'),
            trailing: Text('US\$1.000,00'),
          ),
          ListTile(
            leading: Icon(
              Icons.money,
              color: Colors.grey,
              size: 24.0,
            ),
            title: Text('LTC'),
            subtitle: Text('Litecoin'),
            trailing: Text('US\$0,00'),
          ),
        ],
      ),
    );
  }
}

class Wallets extends StatelessWidget {
  const Wallets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Carteiras'),
      ),
    );
  }
}

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Movimentações'),
      ),
    );
  }
}
