import 'package:flutter/material.dart';
import 'package:test_ing_mw/intento.dart';
//import 'package:test_ing_mw/login_page.dart';
//import "package:test_ing_mw/seleccion_archivos.dart";


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Intento(),
    );
  }
}
