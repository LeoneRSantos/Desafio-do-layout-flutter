import 'package:flutter/material.dart';

import 'widgets/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color(0xFFe6e6e6),
        fontFamily: 'Marker Felt',
        primaryColor: Color(0xFF4f426f),
        accentColor: Color(0xFF262457), 
      ),
      
      home: const HomePage(),
      );
  }
}



