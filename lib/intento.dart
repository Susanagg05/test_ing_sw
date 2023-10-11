import 'dart:ui';

import 'package:flutter/material.dart';

class Intento extends StatelessWidget{
  const Intento ({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(160, 47, 160, 165),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        image: DecorationImage(
          fit: BoxFit.cover,
          image:AssetImage(
            'fondotomografia.png',
          ),
        ),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 30,
            sigmaY: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(275, 0, 274, 25),
                width: double.infinity,
                height: 94,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 11,
                      child: Align(
                        child: SizedBox(
                          width: 571,
                          height: 83,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 39,
                      top: 28,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 242,
                            height: 42,
                            child: Text(
                              'Bienvenido a ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Archivo',
                                fontSize: 38,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 285,
                      top: 0,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 246,
                            height: 70,
                            child: Text(
                              'NeuroSight',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Carter One',
                                fontSize: 45,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff0896c3),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:const  EdgeInsets.fromLTRB(48, 113, 60, 114),
                width: double.infinity,
                height: 693,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                    colors: <Color>[Color(0xff8583f0), Color(0xff09083e)],
                    stops: <double>[0, 0.667],
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin:const EdgeInsets.fromLTRB(0, 0, 121, 0),
                      width: 438,
                      height: 466,
                      child: Image.network(
                        '[URL de la imagen]',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 133, 0, 108),
                      width: 453,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin:const EdgeInsets.fromLTRB(0, 0, 0, 25),
                            padding:const EdgeInsets.fromLTRB(95, 15, 15, 16),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color:const  Color(0xff0896c3),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Container(
                                    margin:const EdgeInsets.fromLTRB(0, 0, 74, 0),
                                    child: Text(
                                      'INGRESAR ID',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff09083e),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 69,
                                  height: 69,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "cerebroladoizquierdo.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Color(0xff0896c3)),
                              color: Color(0xffa0a0a0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}