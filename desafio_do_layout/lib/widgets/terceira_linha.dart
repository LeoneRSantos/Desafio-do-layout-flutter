import 'package:flutter/material.dart';

class TerceiraLinha extends StatelessWidget {
  const TerceiraLinha({Key? key, required this.icone, required this.texto}) : super(key: key);

  final String num1 = "12";
  final String num2 = "20";
  final String num3 = "20";

  final IconData icone;
  final String texto;
  

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
                  Text(num1,),
                  ListTile(
                    title: Icon(icone, size: 45.0, color: Colors.deepPurple,),
                    subtitle: Text(texto, textAlign: TextAlign.center, style: TextStyle(color: Colors.purple),)
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
  
    ]  
    );
}
}