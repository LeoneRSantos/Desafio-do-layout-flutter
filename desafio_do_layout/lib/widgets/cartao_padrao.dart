import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  const CartaoPadrao({Key? key, required this.conteudo}) : super(key: key);

  final Widget conteudo;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(  
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Color(0xFFd7d3e2),),
        child: conteudo,
      ),
    )
    );
  }
}