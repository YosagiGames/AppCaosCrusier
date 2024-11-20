import 'package:flutter/material.dart';

class Carro {
  final List<String> textosPag;
  final String nomeCarro;
  final List<String> img;
  final String habilidade;
  final String origem;
  final List<IconData> icons;

  Carro({
    required this.textosPag,
    required this.nomeCarro,
    required this.img,
    required this.habilidade,
    required this.origem,
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