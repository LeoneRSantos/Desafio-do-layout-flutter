import 'package:flutter/material.dart';

class PrimeiraLinha extends StatelessWidget {
  const PrimeiraLinha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                const CircleAvatar(
                  backgroundImage:AssetImage('images/Perfil2.jpg'),
                  radius: 50.0,
                ),

                
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      const Text("Olá,",
                      style: TextStyle(fontFamily: 'Marker Felt',
                      fontSize: 16.0, 
                      color: Colors.purple),
                      ),

                      Text("Leone!",
                      style: TextStyle(fontFamily: 'Marker Felt',
                      fontSize: 50.0,
                      color: Colors.deepPurple[700]),
                      ),
                    ],

                  ),

                
              ],
            );
  }
}