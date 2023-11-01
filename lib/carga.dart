import 'package:flutter/material.dart';
import 'seleccion_medico.dart';
import 'tumor_malo.dart'; 
import 'tumor_bueno.dart'; 
import 'dart:math'; 

class CargaRoute extends StatefulWidget {
  @override
  _CargaRouteState createState() => _CargaRouteState();
}

class _CargaRouteState extends State<CargaRoute> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      final random = Random();
      final randomNumber = random.nextInt(2);

      if (randomNumber == 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TumorMaloRoute(),
          ),
        );
      } else {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/carga.gif', 
                width: 200, 
                height: 200, 
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

