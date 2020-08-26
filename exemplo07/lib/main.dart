import 'package:flutter/material.dart';

void main() {
  runApp(FriendsApp());
}

class FriendsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus amigos',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Meus amigos'),
          ),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.lightBlueAccent),
                    child: Text('Jorge', style: TextStyle(fontSize: 50)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.lightBlueAccent),
                    child: Text('Gazal', style: TextStyle(fontSize: 50)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.lightBlueAccent),
                    child: Text('Junior', style: TextStyle(fontSize: 50)),
                  ),
                ),
              ]))),
    );
  }
}
