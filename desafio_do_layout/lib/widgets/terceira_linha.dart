import 'package:desafio_do_layout/cores.dart';
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
  late Cores c = Cores();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        
      // Primeiro card
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(width: 110, height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
              
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(widget.numero, style: TextStyle(fontFamily: 'Concert One', fontSize: 14.0, color: c.obterTerceario()),),
                  ),
                  ListTile(
                    title: Icon(widget.icone, size: 45.0, color: c.obterPrincipal()),
                    subtitle: Textos(texto: widget.texto, tamanho: 16.0, cor: Colors.purple),
              )],
              ),
            ),
          ),
        ],
      ),
  
    ]  
    );
}
}