import 'package:flutter/material.dart';

class Historia {
  final List<String> textosPag;
  final String origemCorrida;
  final String histGeral;
  final String histCorrida;
  final List<IconData> icons;

  Historia({
    required this.textosPag,
    required this.origemCorrida,
    required this.histGeral,
    required this.histCorrida,
    required this.icons,
  });

  Widget construirTitulo({required String title}){
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Horizon',
        fontSize: 25,
        color: Color.fromARGB(255, 255, 187, 0),
      ),
    );
  }
}