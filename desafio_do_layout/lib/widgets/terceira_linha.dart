import 'package:flutter/material.dart';

class TerceiraLinha extends StatelessWidget {
  const TerceiraLinha({Key? key}) : super(key: key);

  final String num1 = "12";
  final String num2 = "20";
  final String num3 = "20";
  

  @override
  Widget build(BuildContext context) {
    return Container(
              
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
      height: 140,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
        // Primeiro card
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          
          children: [
            
            Padding(
              padding: const EdgeInsets.only(left: 7.0, right: 7.0),
              child: Card(
                elevation: 0,
                color: Colors.grey[300],
                child: SizedBox(
                  width: 110,
                  height: 110,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      Text(num1,),
                      ListTile(
                        title: Icon(Icons.shop_2, size: 40.0, color: Colors.deepPurple,),
                        subtitle: Text("novos pedidos", textAlign: TextAlign.center, style: TextStyle(color: Colors.purple),)
                      ),
                    ],
                  )
                ),
              ),
                
            ),
          ],
        ),


        // Segundo card
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(left: 7.0, right: 7.0),
              
              child: 
              Card(
                elevation: 0,
                color: Colors.grey[300],
                child: SizedBox(width: 110, height: 110, 
                child: Column(
                  children: [
                    Text(num2),
                    ListTile(
                      title: Icon(Icons.people, size: 40.0, color: Colors.deepPurple,),
                      subtitle: Text("novos clientes", textAlign: TextAlign.center, style: TextStyle(color: Colors.purple),),
                    )
                  ],
                ),),
              ),
              
            ),
          ],
        ),

      // Terceiro card
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Padding(padding: const EdgeInsets.only(left: 7.0, right: 7.0),
            child: Card(
              elevation: 0,
              color: Colors.grey[300],
              child: Column(
                
                children: [
                  Text(num3),
                  const SizedBox(width: 90, height: 90,
                  child: ListTile(
                    title: Icon(Icons.location_city_sharp, size: 40.0, color: Colors.deepPurple,),
                    subtitle: Text("novas cidades", textAlign: TextAlign.center, style: TextStyle(color: Colors.purple),),
                  ),),
                ],
              ),
            ),
            ),
          ],
        ),

          ],
        ),
    );
}
}