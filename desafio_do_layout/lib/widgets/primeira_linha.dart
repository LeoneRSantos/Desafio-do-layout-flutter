import 'package:desafio_do_layout/widgets/textos.dart';
import 'package:flutter/material.dart';

import '../cores.dart';

class PrimeiraLinha extends StatelessWidget {
  PrimeiraLinha({Key? key}) : super(key: key);

  late Cores c = Cores();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        const CircleAvatar(
          backgroundImage:AssetImage('images/Perfil2.jpg'),
          radius: 50.0,
        ),

        
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [

              Textos(texto: 'Olá', tamanho: 16.0, cor: Theme.of(context).colorScheme.secondary),

              Textos(texto: 'Leone!', tamanho: 50.0, cor: Theme.of(context).colorScheme.primary),
            ],

          ),

        
      ],
    );
  }
}