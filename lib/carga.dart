import 'package:flutter/material.dart';
import 'seleccion_medico.dart';
import 'tumor_malo.dart'; // Importa TumorMaloRoute
import 'tumor_bueno.dart'; // Importa TumorBuenoRoute
import 'dart:math'; // Importa la biblioteca random

class CargaRoute extends StatefulWidget {
  @override
  _CargaRouteState createState() => _CargaRouteState();
}

class _CargaRouteState extends State<CargaRoute> {
  @override
  void initState() {
    super.initState();
    // Simula una carga de 5 segundos y luego redirige aleatoriamente
    Future.delayed(Duration(seconds: 5), () {
      // Genera un número aleatorio (0 o 1)
      final random = Random();
      final randomNumber = random.nextInt(2);

      if (randomNumber == 0) {
        // Redirige a TumorMaloRoute
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TumorMaloRoute(),
          ),
        );
      } else {
        // Redirige a TumorBuenoRoute
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TumorBuenoRoute(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        title: 'NeuroSight',
        // Muestra el indicador de carga y el gif
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/carga.gif', // Reemplaza 'tu_gif.gif' con el nombre de tu GIF
                width: 200, // Tamaño máximo para el ancho del GIF
                height: 200, // Tamaño máximo para el alto del GIF
              ),
            ),
            SizedBox(height: 20), // Espaciado
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 27, 109, 177),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Procesando diagnóstico',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  final String title;
  final Widget child;

  BackgroundWidget({required this.title, required this.child});

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
                    // Agrega la columna de carga aquí
                    child,
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

