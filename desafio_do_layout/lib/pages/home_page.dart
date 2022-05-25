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

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
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

                      Text("Ziraldo!",
                      style: TextStyle(fontFamily: 'Marker Felt',
                      fontSize: 50.0,
                      color: Colors.deepPurple[700]),
                      ),
                    ],

                  ),

                
              ],
            )
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