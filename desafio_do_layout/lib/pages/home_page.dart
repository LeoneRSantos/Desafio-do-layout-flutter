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
  String _pedidos = '12';
  String _clientes = '20';
  String _cidades = '20';
  String _novosPedidos = '34.000,00';
  IconData _visibilidade = Icons.visibility;

  void esconder(){
    setState(() {
      _pedidos = '*';
      _clientes = '*';
      _cidades = '*';
      _novosPedidos = '_, __';
      _visibilidade = Icons.visibility_off;
    
    });
    debugPrint('Função esconder');
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [ 
          
            // Primeira linha
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: PrimeiraLinha(),
            ),
          
            // Segunda linha
            SegundaLinha(alterarValores: esconder, icone: _visibilidade,),
          
                
            // Linha com pedidos, clientes e cidades
            // TerceiraLinha(),
            CartaoPadrao(conteudo: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TerceiraLinha(icone: Icons.shop_2, texto: 'novos \npedidos', numero: _pedidos,),
                TerceiraLinha(icone: Icons.people, texto: 'novos \nclientes', numero: _clientes,),
                TerceiraLinha(icone: Icons.location_city, texto: 'novas \ncidades', numero: _cidades,),
              ],
            )
            ),
            
          
            // Quarta linha
            CartaoPadrao(conteudo: QuartaLinha(valor: _novosPedidos,)),

            Expanded(child: Container(height: 110.0,)),
          
          ],
        ),
      ),
      
      floatingActionButton: ExpandableFab(
      distance: 112.0,
      children: [
        ActionButton(
          onPressed: () => _showAction(context, 0),
          icon: const Icon(Icons.person_add),
        ),
        ActionButton(
          onPressed: () => _showAction(context, 1),
          icon: const Icon(Icons.add_shopping_cart),
        ),
        ActionButton(
          onPressed: () => _showAction(context, 2),
          icon: const Icon(Icons.person_add),
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