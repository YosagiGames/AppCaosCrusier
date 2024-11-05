import 'package:flutter/material.dart';

class Jogo {
  final List<String> textosPag;
  final String titulo;
  final String capa;
  final String sinopse;
  final String caracteristicas;
  final String objetivo;
  final String tematica;
  final String motivoJogo;
  final List<IconData> icons;

  const Jogo ({
    required this.textosPag,
    required this.titulo,
    required this.capa,
    required this.sinopse,
    required this.caracteristicas,
    required this.objetivo,
    required this.tematica,
    required this.motivoJogo,
    required this.icons,
  });
}