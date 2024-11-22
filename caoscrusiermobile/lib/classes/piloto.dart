import 'package:flutter/material.dart';

class Piloto {
  final String nomePiloto;
  final String imgPiloto;
  final String nacionalidade;
  final String historia;
  final String fim;

  Piloto({
    required this.nomePiloto,
    required this.imgPiloto,
    required this.nacionalidade,
    required this.historia,
    required this.fim,
  });

  Widget construirIconButton({
    required VoidCallback onPressed,
    required Icon icon,
  }){
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      color: Color.fromARGB(255, 255, 187, 0),
    );
  }
}