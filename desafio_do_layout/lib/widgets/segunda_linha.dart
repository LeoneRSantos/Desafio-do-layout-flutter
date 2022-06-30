import 'package:desafio_do_layout/cores.dart';
import 'package:desafio_do_layout/widgets/textos.dart';
import 'package:flutter/material.dart';

class SegundaLinha extends StatefulWidget {
  SegundaLinha({Key? key, required this.alterarValores, required this.icone}) : super(key: key);

  late void Function() alterarValores;
  final IconData icone;
  

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
        Textos(texto: 'Parabéns! Esse mês você fez', tamanho: 16.0, cor: Theme.of(context).colorScheme.secondary),

        
        TextButton(onPressed: widget.alterarValores,
        
        child: Icon(widget.icone, size: 30.0, color: Theme.of(context).colorScheme.tertiary)),
      ],
      );
  }
}