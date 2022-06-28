import 'package:desafio_do_layout/cores.dart';
import 'package:desafio_do_layout/widgets/textos.dart';
import 'package:flutter/material.dart';

class SegundaLinha extends StatefulWidget {
  SegundaLinha({Key? key, required this.alterarValores,}) : super(key: key);

  late void Function() alterarValores;

  @override
  State<SegundaLinha> createState() => _SegundaLinhaState();
}

class _SegundaLinhaState extends State<SegundaLinha> {
 late Cores c =Cores();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        Textos(texto: 'Parabéns! Esse mês você fez', tamanho: 16.0, cor: c.obterSecundario()),

        Icon(Icons.visibility, size: 30.0, color: Theme.of(context).primaryColor),
      ],
      );
  }
}