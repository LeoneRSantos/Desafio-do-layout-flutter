import 'package:flutter/material.dart';

class CartaoBottomBar extends StatelessWidget {
  const CartaoBottomBar({Key? key, required this.conteudo}) : super(key: key);

  final Widget conteudo;

  @override
  Widget build(BuildContext context) {
    return Container(  
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.0), color: Theme.of(context).colorScheme.tertiary, shape: BoxShape.rectangle),
      child: Padding(
        padding: const EdgeInsets.only(right: 7.0, left: 7.0, bottom: 4.0, top: 4.0),
        child: conteudo,
      ),
    );
  }
}