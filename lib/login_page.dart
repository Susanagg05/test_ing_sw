import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage ({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xff131E40) ,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const Spacer(),
        const Text (
          "Te damos la bienvenida a NeuroSight",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 30
          )
          ),
        const Spacer(),
        TextFormField(),
        const Spacer(),
        Image.asset("assets/meme.jpeg"),
        const SizedBox(
          height: 60,
          width: 120,
          child: InkWell(),
        )
      ]
    )
    );
  } 
}