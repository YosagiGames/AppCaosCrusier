import 'package:flutter/material.dart';

class Jogo {
  final List<String> textosPag;
  final String titulo;
  final String capa;
  final List<String> imgs;
  final String sinopse;
  final String caracteristicas;
  final String objetivo;
  final String tematica;
  final String motivoJogo;
  final List<String> controles;
  final List<IconData> icons;

  const Jogo ({
    required this.textosPag,
    required this.titulo,
    required this.capa,
    required this.imgs,
    required this.sinopse,
    required this.caracteristicas,
    required this.objetivo,
    required this.tematica,
    required this.motivoJogo,
    required this.controles,
    required this.icons,
  });

  Widget construirTitulo({required String title}){
    return Text(
      title,
      textAlign: TextAlign.center,
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
      style: TextStyle(
        fontFamily: 'MonsterRacing',
        fontSize: 25,
        color: Color.fromARGB(255, 255, 187, 0),
      ),
    );
  }

  Widget construirTextoBotao({required String title}){
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'AbeeZee',
        fontSize: 15,
        color: Color.fromARGB(255, 0, 0, 0),
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