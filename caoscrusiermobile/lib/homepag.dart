import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/jogo.dart';
import 'package:caoscruisermobile/inspopag.dart';
import 'package:caoscruisermobile/gamepag.dart';
import 'package:caoscruisermobile/devspag.dart';

class HomePag extends StatefulWidget {
  const HomePag({super.key,});

  @override
  State<HomePag> createState() => _HomePag();
}

class _HomePag extends State<HomePag> {

  final Jogo caosCrusier = const Jogo (
    textosPag: [
      'Home',
      'Sobre o Jogo',
      'Arte',
      'Carros',
      'Cenários',
      'Nossa Inspiração',
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

  dynamic navegacao(Widget pagina) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pagina,
        settings: RouteSettings(
          arguments: caosCrusier,
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 26, 0, 39), 
                  Color.fromARGB(255, 125, 0, 132)
                ]
              ),
            ),
          ), // cor de fundo da AppBar
          title: const Text(
            'CAOS CRUSIER',
            style: TextStyle(
              fontFamily: 'MonsterRacing',
              color: Color.fromARGB(255, 255, 187, 0),
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DevsPag()
              )
            ),
            icon: Icon(Icons.person),
            style: ButtonStyle(
              iconColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 187, 0),)
            ),
          ),
        ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 64, 4, 89),
                Color.fromARGB(255, 14, 1, 55),
              ],
            )
          ),
          child: Align(
            child: Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 88, 0, 123),
                    Color.fromARGB(255, 57, 0, 71),
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      width: 450,
                    ),
                    Image.asset('img/capa.png', width: 400, height: 380,),
                    SizedBox(
                      width: 380,
                      child: Text(
                        caosCrusier.sinopse,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () => navegacao(const GamePag()),
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 187, 0))
                        ),
                        child: construirTitulo(title: caosCrusier.textosPag[1])
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () => navegacao(const InspoPag()),
                        style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 187, 0))),
                        child: construirTitulo(title: caosCrusier.textosPag[5])
                      ),
                    ),
                  ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget construirTitulo({
    required String title
  }){
    return Text(
      title, 
      style: const TextStyle(color: Colors.black),
    );
  }
}