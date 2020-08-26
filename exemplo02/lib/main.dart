import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu de navegação',
          onPressed: null,
        ),
        title: Text('Exemplo de título'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Buscar',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text('Olá mundo!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Adicionar',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
