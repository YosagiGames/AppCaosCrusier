import 'package:flutter/material.dart';

class Cenario {
  final List<String> textosPag;
  final String nome;
  final String nomeOg;
  final List<String> img;
  final String desc;
  final String estetica;
  final String desafios;
  final String historia;
  final List<IconData> icons;

  Cenario({
    required this.textosPag,
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
      color: Color.fromARGB(255, 255, 187, 0),
    );
  }

  Widget construirTitulo({required String title}){
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Horizon',
        fontSize: 20,
        color: Color.fromARGB(255, 255, 187, 0),
      ),
    );
  }

  Widget construirTitleAppBar({required String title}){
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'MonsterRacing',
        fontSize: 25,
        color: Color.fromARGB(255, 255, 187, 0),
      ),
    );
  }
}