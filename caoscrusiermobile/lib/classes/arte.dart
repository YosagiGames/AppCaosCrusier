import 'package:flutter/material.dart';

class Arte {
  final String titulo;
  final List<String> imgs;
  final String desc;
  final List<IconData> icons;

  Arte({
    required this.titulo,
    required this.imgs,
    required this.desc,
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
}