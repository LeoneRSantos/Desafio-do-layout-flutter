import 'package:desafio_do_layout/widgets/textos.dart';
import 'package:flutter/material.dart';

import '../cores.dart';

class PrimeiraLinha extends StatelessWidget {
  PrimeiraLinha({Key? key, required this.alterar}) : super(key: key);

  late Cores c = Cores();
  final void Function() alterar;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        
        const CircleAvatar(
          backgroundImage:AssetImage('images/Perfil2.jpg'),
          radius: 60.0,
        ),

        
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              IconButton(icon: Icon(Icons.light_mode, size: 30.0, color: Theme.of(context).colorScheme.primary,), onPressed: alterar,),

              Textos(texto: 'Olá', tamanho: 16.0, cor: Theme.of(context).colorScheme.secondary),

              Textos(texto: 'Leone!', tamanho: 50.0, cor: Theme.of(context).colorScheme.primary),
            ],

          ),

        
      ],
    );
  }
}