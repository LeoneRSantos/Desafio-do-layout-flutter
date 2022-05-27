import 'package:desafio_do_layout/widgets/primeira_linha.dart';
import 'package:desafio_do_layout/widgets/quarta_linha.dart';
import 'package:desafio_do_layout/widgets/segunda_linha.dart';
import 'package:desafio_do_layout/widgets/terceira_linha.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Colors.grey[200],

        // Coluna principal
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: const[ 

            // Primeira linha
            PrimeiraLinha(),

            // Segunda linha
            SegundaLinha(),

                
            // Linha com pedidos, clientes e cidades
            TerceiraLinha(),

            // Quarta linha
            QuartaLinha(),
          
          ],
        ),
        
        
        bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Colors.grey[100],
          type: BottomNavigationBarType.fixed,
          currentIndex: indexBottomNavigationBar,

          onTap: (int index) {
            setState(() {
              indexBottomNavigationBar = index;
            });

          }, 
          
          items: const [

          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home"),

          BottomNavigationBarItem(
          icon: Icon(Icons.shop_2),
          label: "Ícone 2"),

          BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "Ícone 3"),

          BottomNavigationBarItem(
          icon: Icon(Icons.auto_graph),
          label: "Ícone 4"),

          ]
      
        ),
        
        );
  }
}