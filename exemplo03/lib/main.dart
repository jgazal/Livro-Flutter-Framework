import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livro Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
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
        title: Text('Nosso aplicativo'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('O botão foi apertado x vezes'),
            Text('$_counter', style: Theme.of(context).textTheme.display1)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.brown,
        child: Container(
            height: 100,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.add_box, color: Colors.white),
                      onPressed: () {
                        alert('Adicionei qualquer coisa');
                      }),
                  IconButton(
                      icon: Icon(Icons.add_a_photo, color: Colors.white),
                      onPressed: () {
                        alert('Adicionei uma foto');
                      })
                ],
              ),
            )),
      ),
    );
  }
}

void alert(String message) {
  print(message);
}
