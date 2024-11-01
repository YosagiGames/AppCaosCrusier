import 'package:flutter/material.dart';
import 'package:caoscruisermobile/jogo.dart';
import 'package:caoscruisermobile/homepag.dart';
import 'package:caoscruisermobile/gamepag.dart';
import 'package:caoscruisermobile/artepag.dart';
import 'package:caoscruisermobile/carselectpag.dart';
import 'package:caoscruisermobile/cenarioselectpag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key,});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int opcaoSelecionada = 0; // define qual é a página da BottomNavigationBar
  
  final Jogo caosCrusier = const Jogo (
    textosPag: [
      'Home',
      'Sobre o Jogo',
      'Arte',
      'Carros',
      'Cenários',
      'Nossa Inspiração'
    ],
    titulo: 'Caos Crusier',
    capa: 'img/capa.png',
    sinopse: 'Caos Crusier é um jogo de corrida',
    caracteristicas: 'lalala',
    objetivo: 'o objetivo do jogo',
    tematica: 'O tema do jogo',
    motivoJogo: 'estamos fazendo Caos Crusier',
    icons: [
      Icons.home,
      Icons.sports_esports,
      Icons.brush_rounded,
      Icons.sports_motorsports_rounded,
      Icons.image,
      Icons.arrow_back_ios
    ]
  );

  navegacao(Widget pagina) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pagina,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 0, 20, 49), 
                  Color.fromARGB(255, 15, 66, 107)
                ]
              ),
            ),
          ), // cor de fundo da AppBar
          title: construirTitulo(title: caosCrusier.titulo),
          centerTitle: true,
        ),
        bottomNavigationBar: Stack(
          children: [
            Container( // container customizado para ser do tamanho da BottomNavigationBar e dar o efeito gradiente
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 15, 66, 107),
                    Color.fromARGB(255, 0, 20, 49),
                  ],
                ),
              ),
              height: 60, // altura do container/appbar
            ),
          ]
        ),
        body: IndexedStack(
          index: opcaoSelecionada,
          children: const <Widget>[
            HomePag(),
            GamePag(),
            ArtePag(),
            CarSelectPag(),
            CenarioSelectPag(),
          ],
        )
      )
    );
  }

  Widget construirTitulo({
    required String title
  }) {
    return Text(title, style: const TextStyle(color: Color.fromARGB(255, 255, 187, 0),),);
  }
}