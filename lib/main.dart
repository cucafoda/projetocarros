import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escolha seu Carro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Escolha entre os carros'),
        ),
        body: CarComparison(),
      ),
    );
  }
}

class CarComparison extends StatelessWidget {
  final String hondaDetails = "Honda Civic\n- Motor: 2.0\n- Potência: 155 cv\n- Consumo: 11 km/l";
  final String lancerDetails = "Lancer\n- Motor: 2.0\n- Potência: 160 cv\n- Consumo: 10.5 km/l";

  void showCarDetails(BuildContext context, String carDetails) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Detalhes do Carro'),
        content: Text(carDetails),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Fechar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Escolha entre os carros:',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => showCarDetails(context, hondaDetails),
            child: Text('Honda Civic'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => showCarDetails(context, lancerDetails),
            child: Text('Lancer'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
