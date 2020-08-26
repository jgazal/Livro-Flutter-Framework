import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desconto',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var initValueController = TextEditingController();
  var discountController = TextEditingController();
  var percentualController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desconto"),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Divider(),
              Text(
                result.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Divider(),
              buildTextField("Valor inicial", initValueController),
              Divider(),
              buildTextField("Desconto", discountController),
              Divider(),
              buildTextField("Inteiro/decimal", percentualController),
              Divider(),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = calcularDesconto(
                        double.parse(initValueController.text),
                        double.parse(discountController.text),
                        int.tryParse(percentualController.text));
                  });
                },
                child: Text('Calcular', style: TextStyle(fontSize: 20)),
                textColor: Colors.white,
                color: Colors.blue,
                padding: const EdgeInsets.all(8.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildTextField(String label, TextEditingController c) {
  return TextField(
    controller: c,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: Colors.blue),
      border: OutlineInputBorder(),
    ),
    style: TextStyle(color: Colors.blue, fontSize: 25.0),
    keyboardType: TextInputType.numberWithOptions(decimal: true),
  );
}

double calcularDesconto(double initValue, double discount, int percentual) {
  if (discount <= 0) {
    throw new ArgumentError("O desconto deve ser maior que zero");
  }

  if (initValue <= 0) {
    throw new ArgumentError("O valor inicial deve ser maior que zero");
  }

  if (percentual != 0) {
    return initValue - (initValue * discount / 100);
  }

  return initValue - discount;
}
