import 'package:flutter/material.dart';

class Enduro {
  final List<String> textosPag;
  final String titulo;
  final List<String> imgs;
  final String desc;
  final String eventos;
  final String video;
  final List<IconData> icons;

  Enduro({
    required this.textosPag,
    required this.titulo,
    required this.imgs,
    required this.desc,
    required this.eventos,
    required this.video,
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

  Widget construirIconButton({
    required VoidCallback onPressed,
    required Widget icon,
  }){
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      color: Color.fromARGB(255, 255, 187, 0),
    );
  }
}