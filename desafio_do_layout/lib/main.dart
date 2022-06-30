import 'package:flutter/material.dart';

import 'pages/home_page.dart';

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
        // brightness: Brightness.light,
        scaffoldBackgroundColor: Color(0xFFe6e6e6),
        fontFamily: 'Marker Felt',
        // primaryColor: Color(0xFF4f426f),
        colorScheme: ColorScheme(brightness: Brightness.light, 
        primary: Color(0xFF262457), onPrimary: Color(0xFFe6e6e6), 
        secondary: Colors.purple, onSecondary: Color(0xFFe6e6e6), 
        error: Colors.red.shade700, onError: Colors.red.shade700, 
        background: Color(0xFFe6e6e6), onBackground: Color(0xFFe6e6e6), 
        surface: Color(0xFFd7d3e2), onSurface: Colors.black, 
        tertiary: Color(0xFF4f426f)),
      ),
      
      home: const HomePage(),
      );
  }
}



