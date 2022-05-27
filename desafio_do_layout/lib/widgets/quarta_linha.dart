import 'dart:ui';

import 'package:flutter/material.dart';

class QuartaLinha extends StatelessWidget {
  const QuartaLinha({Key? key}) : super(key: key);

  final String valor = "34.000,00";

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
        height: 140,
        margin: const EdgeInsets.symmetric(horizontal: 16.0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.shop_2, size: 50.0,),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("R\$ $valor", style: TextStyle(fontSize: 35.0),),
                Text("em novos pedidos", textAlign: TextAlign.right, style: TextStyle(fontSize: 20.0),),
              ],
            )
          ],
        ),
    );
  }
}