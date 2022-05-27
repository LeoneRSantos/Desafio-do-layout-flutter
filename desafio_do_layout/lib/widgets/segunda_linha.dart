import 'package:flutter/material.dart';

class SegundaLinha extends StatelessWidget {
  const SegundaLinha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: const [
                Text("Parabéns! Esse mês você fez", 
                style: TextStyle(fontFamily: 'Marker Felt',
                fontSize: 16.0,
                color: Colors.purple),
                ),

                Icon(Icons.visibility),
              ],
              );
  }
}