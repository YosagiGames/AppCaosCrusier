import 'package:flutter/material.dart';

class Cenario {
  final String tituloPag;
  final String nome;
  final String nomeOg;
  final List<String> img;
  final String desc;
  final String estetica;
  final List<String> desafios;
  final String historia;
  final List<IconData> icons;

  Cenario({
    required this.tituloPag,
    required this.nome,
    required this.nomeOg,
    required this.img,
    required this.desc,
    required this.estetica,
    required this.desafios,
    required this.historia,
    required this.icons,
  });

  Widget construirIconButton({
    required VoidCallback onPressed,
    required Icon icon,
  }){
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }

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