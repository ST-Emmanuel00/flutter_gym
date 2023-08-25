import 'package:app_gym/screen/imc.dart';
import 'package:flutter/material.dart';

import 'screen/navegador.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
        title: 'Cotizacion',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          fontFamily: 'Raleway'
          
        ),
        home: Navegador() ,
      );
  }
}