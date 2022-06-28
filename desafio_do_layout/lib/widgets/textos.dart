import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  const Textos({Key? key, required this.texto, required this.tamanho, required this.cor}) : super(key: key);

  final String texto;
  final double tamanho;
  final Color cor;
  
  @override
  Widget build(BuildContext context) {
    return Text(texto, textAlign: TextAlign.center,
    style: TextStyle(fontSize: tamanho, color: cor),);
  }
}