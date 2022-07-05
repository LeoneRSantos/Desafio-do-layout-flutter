import 'package:desafio_do_layout/widgets/textos.dart';
import 'package:flutter/material.dart';

class TerceiraLinha extends StatefulWidget {
  TerceiraLinha({Key? key, required this.icone, required this.texto, required this.numero}) : super(key: key);

  final String numero;
  final IconData icone;
  final String texto;

  @override
  State<TerceiraLinha> createState() => _TerceiraLinhaState();
}

class _TerceiraLinhaState extends State<TerceiraLinha> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        

      SizedBox(width: 120, height: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
        
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(widget.numero, style: TextStyle(fontFamily: 'Concert One', fontSize: 14.0, color: Theme.of(context).colorScheme.tertiary),),
            ),
            ListTile(
              title: Icon(widget.icone, size: 40.0, color: Theme.of(context).colorScheme.primary),
              subtitle: Textos(texto: widget.texto, tamanho: 16.0, cor: Theme.of(context).colorScheme.secondary),
        )],
        ),
      ),
  
    ]  
    );
}
}