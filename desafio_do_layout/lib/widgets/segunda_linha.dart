import 'package:desafio_do_layout/cores.dart';
import 'package:desafio_do_layout/widgets/textos.dart';
import 'package:flutter/material.dart';

class SegundaLinha extends StatelessWidget {
  SegundaLinha({Key? key}) : super(key: key);

 late Cores c =Cores();

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Textos(texto: 'Parabéns! Esse mês você fez', tamanho: 16.0, cor: c.obterSecundario()),

                Icon(Icons.visibility, size: 30.0, color: c.obterTerceario()),
              ],
              );
  }
}