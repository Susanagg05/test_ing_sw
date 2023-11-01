import 'package:flutter/material.dart';
import 'seleccion_medico.dart';

class AutenticacionRoute extends StatelessWidget {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        title: 'NeuroSight', 
        userController: _userController,
        passwordController: _passwordController,
        onPressed1: () {
          String user = _userController.text;
          String password = _passwordController.text;

          // Verifica si el usuario y la contraseña son correctos
          if (user == 'putinmanda' && password == '1234') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SeleccionMedicoRoute(),
              ),
            );
          } else {
            // Muestra una advertencia al usuario
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Advertencia'),
                  content: Text('Usuario o contraseña incorrectos. Por favor, inténtalo de nuevo.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Aceptar'),
                    ),
                  ],
                );
              },
            );
          }
        },
        onPressed2: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  final String title;
  final TextEditingController userController;
  final TextEditingController passwordController;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;

  BackgroundWidget({
    required this.title,
    required this.userController,
    required this.passwordController,
    required this.onPressed1,
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
            child: RichText(
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
                      fontSize: 28,
                      color: const Color.fromARGB(255, 10, 43, 94),
                      fontFamily: 'Carter One',
                    ),
                  ),
                ],
              ),
            ),
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
                  child: Image.asset(
                    'assets/calavera.png',
                    width: 120, 
                    height: 120, 
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 250,
                      child: TextField(
                        controller: userController,
                        decoration: InputDecoration(
                          labelText: 'Usuario',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20), 

                    Container(
                      width: 250,
                      child: TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: onPressed1,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('VALIDAR'),
                          SizedBox(width: 8), 
                          Image.asset(
                            'assets/chulo.png',
                            width: 32, 
                            height: 32, 
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: onPressed2,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SALIR'),
                          SizedBox(width: 8), 
                          Image.asset(
                            'assets/salir.png',
                            width: 32, 
                            height: 32,
                          ),
                        ],
                      ),
                    ),
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
