

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
        
        backgroundColor: Colors.grey[100],

        // Coluna principal
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [

            // Primeira linha
            Row(
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
            ),

            // Segunda linha
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: const [
                Text("Parabéns! Esse mês você fez", 
                style: TextStyle(fontFamily: 'Marker Felt',
                fontSize: 16.0,
                color: Colors.purple),
                ),

                Icon(Icons.visibility),
              ],
              ),

              // Primeiro card
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Card(
                
                  

                  child: SizedBox(
                    width: 100,
                    height: 70,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        ListTile(
                          title: Icon(Icons.shop_2),
                          subtitle: Text("  novos   pedidos"),),
                      ],
                    )
                  ),
                      ),

                    // children: const [
                  
                    //  ListTile(
                    //     title: Icon(Icons.shop_2),
                    //   ),

                    //  ListTile(
                    //    title: Icon(Icons.people),
                    //   ),

                    //  ListTile(
                    //     title: Icon(Icons.location_city_sharp),
                    //   ),

                      

                  
                  ),
                // ),
              
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