import 'package:flutter/material.dart';
import 'menu.dart';
import 'diagnostico.dart';

import 'package:flutter/material.dart';
import 'menu.dart';

class SeleccionMedicoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        title: 'NeuroSight', // Título
        menuButtonText1: 'SELECCIONAR ARCHIVO',
        menuButtonIcon1: 'assets/file.png',
        onPressed1: () {
          // Acción para el botón "SELECCIONAR ARCHIVO" (personalícela según sus necesidades)
        },
        menuButtonText2: 'SOLICITAR DIAGNÓSTICO',
        menuButtonIcon2: 'assets/chulo.png',
        onPressed2: () {
          // Navegar a la pantalla de diagnóstico
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DiagnosticoRoute(),
            ),
          );
        },
        menuButtonText3: 'VOLVER',
        menuButtonIcon3: 'assets/salir.png',
        onPressed3: () {
          // Volver siempre a menu.dart
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
      ),
    );
  }
}

// Resto del código


// La clase BackgroundWidget es la misma que en menu.dart
// Puedes mover esta clase a un archivo separado y luego importarlo en ambos archivos para reutilizarlo
class BackgroundWidget extends StatelessWidget {
  final String title;
  final String menuButtonText1;
  final String menuButtonIcon1;
  final VoidCallback onPressed1;
  final String menuButtonText2;
  final String menuButtonIcon2;
  final VoidCallback onPressed2;
  final String menuButtonText3;
  final String menuButtonIcon3;
  final VoidCallback onPressed3;

  BackgroundWidget({
    required this.title,
    required this.menuButtonText1,
    required this.menuButtonIcon1,
    required this.onPressed1,
    required this.menuButtonText2,
    required this.menuButtonIcon2,
    required this.onPressed2,
    required this.menuButtonText3,
    required this.menuButtonIcon3,
    required this.onPressed3,
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
                  child: Image.asset('assets/calavera.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MenuButton(menuButtonText1, menuButtonIcon1, onPressed1),
                    SizedBox(height: 20), // Espaciado adicional
                    MenuButton(menuButtonText2, menuButtonIcon2, onPressed2),
                    SizedBox(height: 20), // Espaciado adicional
                    MenuButton(menuButtonText3, menuButtonIcon3, onPressed3),
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
        width: 230,
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
