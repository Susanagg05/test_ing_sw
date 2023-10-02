import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ), 
        appBar: AppBar(
          title: const Text("Mi primera App"),
        ),
        backgroundColor: const Color(0xff131e40),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Has presionado esto"),
              const Text("x veces"),
              GestureDetector(
               onTap: () {},
               child: const Text ("Presioname"),
              ),
              ElevatedButton(
                onPressed: () {}
              , child: const Text("Ingresar"))
            ],
          ),
        ),
      ),
    );
  }
}
