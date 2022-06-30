import 'dart:ui';

import 'package:desafio_do_layout/cores.dart';
import 'package:desafio_do_layout/widgets/textos.dart';
import 'package:flutter/material.dart';

class QuartaLinha extends StatelessWidget {
  QuartaLinha({Key? key, required this.valor}) : super(key: key);

  final String valor;
  late Cores c = Cores();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.shop_2, size: 55.0, color: Theme.of(context).colorScheme.primary,),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("R\$ $valor", style: TextStyle(fontSize: 35.0, color: Theme.of(context).colorScheme.secondary, fontFamily: 'Concert One'),),
            // Text("em novos pedidos", textAlign: TextAlign.right, style: TextStyle(fontSize: 20.0),),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Textos(texto: 'em novos pedidos', tamanho: 20.0, cor: Theme.of(context).colorScheme.primary),
            ),
          ],
        )
      ],
    );
  }
}