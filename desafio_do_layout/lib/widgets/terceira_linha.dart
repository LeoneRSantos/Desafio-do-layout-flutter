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
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
        // Primeiro card
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          
          children: [
            Text(num1, textAlign: TextAlign.right,),
            Padding(
              padding: const EdgeInsets.only(left: 7.0, right: 7.0),
              child: Card(
                elevation: 0,
                color: Colors.grey[300],
                child: SizedBox(
                  width: 90,
                  height: 90,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: const[
                      ListTile(
                        title: Icon(Icons.shop_2, size: 40.0,),
                        subtitle: Text("novos pedidos", textAlign: TextAlign.center,)
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
            Text(num2),
            Padding(
              padding: const EdgeInsets.only(left: 7.0, right: 7.0),
              
              child: 
              Card(
                elevation: 0,
                color: Colors.grey[300],
                child: SizedBox(width: 90, height: 90, 
                child: Column(
                  children: const[
                    ListTile(
                      title: Icon(Icons.people, size: 40.0,),
                      subtitle: Text("novos clientes", textAlign: TextAlign.center,),
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
            Text(num3),
            Padding(padding: const EdgeInsets.only(left: 7.0, right: 7.0),
            child: Card(
              elevation: 0,
              color: Colors.grey[300],
              child: const SizedBox(width: 90, height: 90,
              child: ListTile(
                title: Icon(Icons.location_city_sharp, size: 40.0,),
                subtitle: Text("novas cidades", textAlign: TextAlign.center,),
              ),),
            ),
            ),
          ],
        ),

          ],
        ),
    );
}
}