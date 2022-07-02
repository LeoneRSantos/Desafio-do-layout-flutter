import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:desafio_do_layout/widgets/botao_quinta_linha.dart';
import 'package:desafio_do_layout/widgets/cartao_padrao.dart';
import 'package:desafio_do_layout/widgets/primeira_linha.dart';
import 'package:desafio_do_layout/widgets/quarta_linha.dart';
import 'package:desafio_do_layout/widgets/segunda_linha.dart';
import 'package:desafio_do_layout/widgets/terceira_linha.dart';
import 'package:desafio_do_layout/widgets/textos.dart';
import 'package:flutter/material.dart';

import '../widgets/cartao_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.alterarTema, required this.iconeTemaAtual}) : super(key: key);

  final void Function() alterarTema;
  final IconData iconeTemaAtual;

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

  void controlarExibicao(){

    if (_pedidos == '12') {
      setState(() {
        _pedidos = '*';
        _clientes = '*';
        _cidades = '*';
        _novosPedidos = '_, __';
        _visibilidade = Icons.visibility_off;
      
      });
      debugPrint('Função manipular: valores escondidos.');
      
    }
    else{
      setState(() {
        _pedidos = '12';
        _clientes = '20';
        _cidades = '20';
        _novosPedidos = '34.000,00';
        _visibilidade = Icons.visibility;
      
      });
      debugPrint('Função manipular: valores mostrados.');

    }
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

    // Cores a serem usadas no BubbleBottomBarItem
    Color corPrincipal = Theme.of(context).colorScheme.primary;
    Color corTerciaria = Theme.of(context).colorScheme.tertiary;
    Color corPreenchimento = Theme.of(context).scaffoldBackgroundColor;


    return Scaffold(
    
      // Coluna principal
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [ 
          
            // Primeira linha
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: PrimeiraLinha(alterar: widget.alterarTema, iconeTema: widget.iconeTemaAtual,),
            ),
          
            // Segunda linha
            SegundaLinha(alterarValores: controlarExibicao, icone: _visibilidade,),
          
                
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

            const Spacer(),
          
          ],
        ),
      ),
      
      floatingActionButton: ExpandableFab(
      distance: 100.0,
      children: [
        ActionButton(
          texto: 'representantes',
          onPressed: () => _showAction(context, 0),
          icon: const Icon(Icons.person_add),
        ),
        ActionButton(
          texto: 'pedidos',
          onPressed: () => _showAction(context, 1),
          icon: const Icon(Icons.add_shopping_cart),
        ),
        ActionButton(
          onPressed: () => _showAction(context, 2),
          icon: const Icon(Icons.person_add), texto: 'clientes',
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
          BubbleBottomBarItem(backgroundColor: corPrincipal, icon: CartaoBottomBar(conteudo: Icon(Icons.home, color: corPreenchimento,)), activeIcon: Icon(Icons.home, color: corPreenchimento), title: Textos(texto: 'Home', tamanho: 14.0, cor: corPreenchimento)),
          BubbleBottomBarItem(backgroundColor: corPrincipal, icon: CartaoBottomBar(conteudo: Icon(Icons.shop_2, color: corPreenchimento,)), activeIcon: Icon(Icons.shop_2, color: corPreenchimento), title: Textos(texto: 'Pedidos', tamanho: 14.0, cor: corPreenchimento)),
          BubbleBottomBarItem(backgroundColor: corPrincipal, icon: CartaoBottomBar(conteudo: Icon(Icons.people, color: corPreenchimento,)), activeIcon: Icon(Icons.people, color: corPreenchimento,), title: Textos(texto: 'Clientes', tamanho: 14.0, cor: corPreenchimento)),
          BubbleBottomBarItem(backgroundColor: corPrincipal, icon: CartaoBottomBar(conteudo: Icon(Icons.show_chart, color: corPreenchimento,)), activeIcon: Icon(Icons.show_chart, color: corPreenchimento,), title: Textos(texto: 'Estatísticas', tamanho: 14.0, cor: corPreenchimento)),
      ],
      
      
  ),
  
  );
        
  }
}