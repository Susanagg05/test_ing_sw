import 'package:flutter/material.dart';

class SeleccionArchivo extends StatelessWidget{
  const SeleccionArchivo ({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Columna de la imagen
          Expanded(
            child: Container(
              decoration: const  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('fondotomografia.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Columna de botones
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 TextFormField(
              //controller: controller,
              style:  TextStyle(
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                //En este estilo casi no se toca el color
                //Ya que usamos el color del tema de la app
                //Recuerden que en el main.dart le dimos un color al tema
                fillColor: Colors.white,
                filled: true,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                label: const Text(
                  "Ingresa tu ID",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón "Enviar ID"
                  },
                  child: Text('Enviar ID'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}