import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:desafio_do_layout/widgets/botao_quinta_linha.dart';
import 'package:desafio_do_layout/widgets/cartao_padrao.dart';
import 'package:desafio_do_layout/widgets/primeira_linha.dart';
import 'package:desafio_do_layout/widgets/quarta_linha.dart';
import 'package:desafio_do_layout/widgets/segunda_linha.dart';
import 'package:desafio_do_layout/widgets/terceira_linha.dart';
import 'package:desafio_do_layout/widgets/textos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int indexBottomNavigationBar = 0;
  String pedidos = '12';
  String clientes = '20';
  String cidades = '20';
  String novosPedidos = '34.000,00';

  void esconder(){

    setState(() {
      Icon(Icons.visibility_off);
      String pedidos = '*';
      String clientes = '*';
      String cidades = '*';
      String novosPedidos = '_, __';
    });

  }

  

  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      // Coluna principal
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [ 
          
            // Primeira linha
            PrimeiraLinha(),
          
            // Segunda linha
            SegundaLinha(alterarValores: esconder,),
          
                
            // Linha com pedidos, clientes e cidades
            // TerceiraLinha(),
            CartaoPadrao(conteudo: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TerceiraLinha(icone: Icons.shop_2, texto: 'novos \npedidos', numero: pedidos,),
                TerceiraLinha(icone: Icons.people, texto: 'novos \nclientes', numero: clientes,),
                TerceiraLinha(icone: Icons.location_city, texto: 'novas \ncidades', numero: cidades,),
              ],
            )
            ),
            
          
            // Quarta linha
            CartaoPadrao(conteudo: QuartaLinha(valor: novosPedidos,)),

            // Botão
            // BotaoQuintaLinha(),
            Expanded(child: Container()),
          
          ],
        ),
      ),
      
      floatingActionButton: ExpandableFab(
      distance: 112.0,
      children: [
        ActionButton(
          onPressed: () => _showAction(context, 0),
          icon: const Icon(Icons.format_size),
        ),
        ActionButton(
          onPressed: () => _showAction(context, 1),
          icon: const Icon(Icons.insert_photo),
        ),
        ActionButton(
          onPressed: () => _showAction(context, 2),
          icon: const Icon(Icons.videocam),
        ),
      ],
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(backgroundColor: Color(0xFF262457), icon: Icon(Icons.home, color: Color(0xFF4f426f),), activeIcon: Icon(Icons.home, color: Color(0xFFe6e6e6)), title: Textos(texto: 'Home', tamanho: 14.0, cor: Color(0xFFe6e6e6))),
          BubbleBottomBarItem(backgroundColor: Color(0xFF262457), icon: Icon(Icons.shop_2, color: Color(0xFF4f426f),), activeIcon: Icon(Icons.shop_2, color: Color(0xFFe6e6e6)), title: Textos(texto: 'Pedidos', tamanho: 14.0, cor: Color(0xFFe6e6e6))),
          BubbleBottomBarItem(backgroundColor: Color(0xFF262457), icon: Icon(Icons.people, color: Color(0xFF4f426f),), activeIcon: Icon(Icons.people, color: Color(0xFFe6e6e6),), title: Textos(texto: 'Clientes', tamanho: 14.0, cor: Color(0xFFe6e6e6))),
          BubbleBottomBarItem(backgroundColor: Color(0xFF262457), icon: Icon(Icons.show_chart, color: Color(0xFF4f426f),), activeIcon: Icon(Icons.show_chart, color: Color(0xFFe6e6e6),), title: Textos(texto: 'Estatísticas', tamanho: 14.0, cor: Color(0xFFe6e6e6))),
      ],
      
      
  ),
  
  );
        
  }
}