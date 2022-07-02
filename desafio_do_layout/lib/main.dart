import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 late ThemeData tema = temaEscuro;
  

 ThemeData definirTema(){

    return tema;
  }

  void selecionarTema(){

    if (tema.colorScheme.brightness == Brightness.dark) {
      setState(() {
      Icon(Icons.light_mode);
      tema = temaClaro;
        debugPrint('Tema Claro');
      });
      
    }

    else if (tema.colorScheme.brightness == Brightness.light){
      setState(() {
      Icon(Icons.dark_mode); 
      tema = temaEscuro;
      debugPrint('Tema escuro');
      });
     
    }
  }

  ThemeData temaEscuro = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF101010),
    fontFamily: 'Marker Felt',
    colorScheme: ColorScheme(
      brightness: Brightness.dark, 
      primary: Colors.grey.shade100, onPrimary: const Color(0xFF262457), 
      secondary: const Color(0xFFd7d3e2), onSecondary: const Color(0xFF262457), 
      error: Colors.red.shade700, onError: Colors.red.shade700, 
      background: const Color(0xFF101010), onBackground: const Color(0xFF101010), 
      surface: Color.fromRGBO(33, 4, 87, 10), onSurface: Colors.grey.shade100, 
      tertiary: const Color(0xFF4f426f)),
  );

  ThemeData temaClaro = ThemeData(
    // brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFe6e6e6),
    fontFamily: 'Marker Felt',
    // primaryColor: Color(0xFF4f426f),
    // 82, 73, 162
    colorScheme: ColorScheme(brightness: Brightness.light, 
    primary: const Color(0xFF262457), onPrimary: const Color(0xFFe6e6e6), 
    secondary: Colors.purple, onSecondary: const  Color(0xFFe6e6e6), 
    error: Colors.red.shade700, onError: Colors.red.shade700, 
    background: const Color(0xFFe6e6e6), onBackground: const Color(0xFFe6e6e6), 
    surface: const Color(0xFFd7d3e2), onSurface: Colors.black, 
    tertiary: const Color(0xFF4f426f)),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: definirTema(),
      
      home: HomePage(alterarTema: selecionarTema,),
      );
  }
}



