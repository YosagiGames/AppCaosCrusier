import 'package:flutter/material.dart';

class Empresa {
  final String nome;
  final String logo;
  final String desc;

  Empresa(
    this.nome,
    this.logo,
    this.desc,
  );

  Widget construirTitulo({required String title}){
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Horizon',
        fontSize: 25,
        color: Color.fromARGB(255, 255, 187, 0),
      ),
    );
  }

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