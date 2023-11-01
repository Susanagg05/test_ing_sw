import 'package:flutter/material.dart';
import 'seleccion_medico.dart';
import 'carga.dart'; // Importa carga.dart
import 'dart:math'; // Importa la biblioteca random

class TumorMaloRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        title: 'NeuroSight',
        menuButtonText1: 'Resultado: Hay tumor',
        menuButtonIcon1: 'assets/salir.png',
        onPressed1: () {
        },
        menuButtonText2: 'VOLVER',
        menuButtonIcon2: 'assets/salir.png',
        onPressed2: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SeleccionMedicoRoute(),
            ),
          );
        },
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  final String title;
  final String menuButtonText1;
  final String menuButtonIcon1;
  final VoidCallback onPressed1;
  final String menuButtonText2;
  final String menuButtonIcon2;
  final VoidCallback onPressed2;

  BackgroundWidget({
    required this.title,
    required this.menuButtonText1,
    required this.menuButtonIcon1,
    required this.onPressed1,
    required this.menuButtonText2,
    required this.menuButtonIcon2,
    required this.onPressed2,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/cerebros.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 20,
          left: 490,
          right: 490,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: MyAppTitle(title: title),
          ),
        ),
        Center(
          child: Container(
            width: 600,
            height: 350,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 10, 43, 94),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 10, 43, 94),
                  ),
                  child: Image.asset('assets/Cancer.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MenuButton(menuButtonText1, menuButtonIcon1, onPressed1),
                    SizedBox(height: 20),
                    MenuButton(menuButtonText2, menuButtonIcon2, onPressed2),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyAppTitle extends StatelessWidget {
  final String title;

  MyAppTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: 'Bienvenido a ',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: title,
            style: TextStyle(
              fontSize: 24,
              color: const Color.fromARGB(255, 10, 43, 94),
              fontFamily: 'Carter One',
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;

  MenuButton(this.text, this.imagePath, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 240,
        height: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 27, 109, 177),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: <Widget>[
            Spacer(),
            Text(
              text,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Spacer(),
            Image.asset(imagePath),
          ],
        ),
      ),
    );
  }
}
