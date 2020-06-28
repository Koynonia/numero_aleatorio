import 'package:flutter/material.dart';
import 'dart:math';

class NumeroAleatorio extends StatefulWidget {
  @override
  _NumeroAleatorioState createState() => _NumeroAleatorioState();
}

class _NumeroAleatorioState extends State<NumeroAleatorio> {
  int _numero = 0;

  void _gerarNumero() {
    setState(() {
      Random numeroAleatorio = new Random();
      _numero = numeroAleatorio.nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '$_numero',
            style: TextStyle(color: Colors.black54, fontSize: 28),
          ),
          SizedBox(height: 30),
          RaisedButton(onPressed: _gerarNumero, child: Text("Gerar número"))
        ],
      ),
    );
  }
}
