import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  const CartaoPadrao({Key? key, required this.conteudo}) : super(key: key);

  final Widget conteudo;

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 1,
      child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(  
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Theme.of(context).colorScheme.surface,),
        child: conteudo,
      ),
    )
    );
  }
}