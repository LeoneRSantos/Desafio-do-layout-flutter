import 'package:flutter/material.dart';

class BotaoQuintaLinha extends StatelessWidget {
  const BotaoQuintaLinha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.deepPurple, child: Icon(Icons.add),),
        ),
      ],
    );
  }
}