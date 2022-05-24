import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        
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

                    children: const [
                      Text("Olá,",
                      style: TextStyle(fontFamily: 'Marker Felt',
                      fontSize: 16.0 ),
                      ),

                      Text("Ziraldo!",
                      style: TextStyle(fontFamily: 'Marker Felt',
                      fontSize: 50.0 ),
                      ),
                    ],

                  ),

                
              ],
            )
          ],
        ),
        
        
        
        ),
     
    );
  }
}



