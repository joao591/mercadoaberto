import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text("Mercado Livre"),
            backgroundColor: Color(0xfff5d415),
            actions: [Icon(Icons.shopping_bag_outlined)],
            //foregroundColor: Colors.black,

            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(10), //tamanho barra inferior
              child: Text("Enviar para Juscelinho Cubisthcek"),
            )),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xfff5d415),
                  Color(0xffff69b4),
                  Color(0xfff5f5f5),
                  Color(0xffff69b4),
                  Color(0xfff5d415),
                ]),
          ),
        ));
  }
}
