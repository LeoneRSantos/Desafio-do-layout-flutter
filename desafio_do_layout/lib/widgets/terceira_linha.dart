import 'package:desafio_do_layout/cores.dart';
import 'package:flutter/material.dart';

class TerceiraLinha extends StatelessWidget {
  TerceiraLinha({Key? key, required this.icone, required this.texto, required this.numero}) : super(key: key);

  final String numero;
  final IconData icone;
  final String texto;
 
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
                    child: Text(numero, style: TextStyle(fontFamily: 'Concert One', fontSize: 14.0, color: c.obterTerceario()),),
                  ),
                  ListTile(
                    title: Icon(icone, size: 45.0, color: c.obterPrincipal()),
                    subtitle: Text(texto, textAlign: TextAlign.center, 
                    style: TextStyle(color: c.obterSecundario(), fontFamily: 'Marker Felt', fontSize: 16.0),
                  ),
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