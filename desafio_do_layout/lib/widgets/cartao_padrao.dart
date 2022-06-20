import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  const CartaoPadrao({Key? key, required this.conteudo}) : super(key: key);

  final Widget conteudo;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container( 
        height: 120, 
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.grey[300],),
        child: conteudo,
      ),
    )
    );
  }
}