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
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: [ 
            
              // Primeira linha
              PrimeiraLinha(),
            
              // Segunda linha
              SegundaLinha(),
            
                  
              // Linha com pedidos, clientes e cidades
              // TerceiraLinha(),
              CartaoPadrao(conteudo: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TerceiraLinha(icone: Icons.shop_2, texto: 'novos pedidos',),
                  TerceiraLinha(icone: Icons.people, texto: 'novos clientes'),
                  TerceiraLinha(icone: Icons.location_city, texto: 'novas cidades'),
                ],
              )
              ),
              
            
              // Quarta linha
              CartaoPadrao(conteudo: QuartaLinha()),

              // Botão
              BotaoQuintaLinha(),
            
            ],
          ),
        ),
        
        
        bottomNavigationBar: BubbleBottomBar(
        opacity: 1,
        currentIndex: indexBottomNavigationBar,

         onTap: (int index) {
            setState(() {
              indexBottomNavigationBar = index;
            });
          },
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(backgroundColor: Colors.deepPurple, icon: Icon(Icons.home, color: Colors.deepPurple,), activeIcon: Icon(Icons.home, color: Colors.grey.shade50,), title: Text("Home", style: TextStyle(color: Colors.grey.shade50),)),
            BubbleBottomBarItem(backgroundColor: Colors.deepPurple, icon: Icon(Icons.shop_2, color: Colors.deepPurple,), activeIcon: Icon(Icons.shop_2, color: Colors.grey.shade50,), title: Text("Pedidos", style: TextStyle(color: Colors.grey.shade50))),
            BubbleBottomBarItem(backgroundColor: Colors.deepPurple, icon: Icon(Icons.people, color: Colors.deepPurple,), activeIcon: Icon(Icons.people, color: Colors.grey.shade50,), title: Text("Clientes", style: TextStyle(color: Colors.grey.shade50))),
            BubbleBottomBarItem(backgroundColor: Colors.deepPurple, icon: Icon(Icons.auto_graph_outlined, color: Colors.deepPurple,), activeIcon: Icon(Icons.auto_graph_outlined, color: Colors.grey.shade50,), title: Text("Estatísticas", style: TextStyle(color: Colors.grey.shade50)))
        ],
        

          }, 
          
          items: const [

          BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30,),
          label: ""),

          BottomNavigationBarItem(
          icon: Icon(Icons.shop_2, size: 30,),
          label: ""),

          BottomNavigationBarItem(
          icon: Icon(Icons.people, size: 30,),
          label: ""),

          BottomNavigationBarItem(
          icon: Icon(Icons.auto_graph, size: 30,),
          label: ""),

          ]
      
        ),
        
        );
  }
}