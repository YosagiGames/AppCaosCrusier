import 'package:flutter/material.dart';
import 'package:caoscruisermobile/jogo.dart';
import 'package:caoscruisermobile/inspopag.dart';
import 'package:caoscruisermobile/gamepag.dart';

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
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 88, 0, 123),
                Color.fromARGB(255, 57, 0, 71),
              ],
            )
          ),
          child: Center(
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
                  child: Column(
                    children: [
                      Image.asset('img/capa.png', width: 310, height: 200,),
                      const SizedBox(
                        width: 380,
                        child: Text(
                          'Caos Cruiser é um jogo de corrida retrô inspirado nos jogos de corrida clássico dos anos 80 a 90, com o objetivo de ultrapassar diversos carros em um período de um dia.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'ABeeZee',
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 380,
                        child: Text(
                          'Se passa ao redor do mundo viajando por alguns países como Inglaterra, Brasil, Japão, Austrália e Egito, onde cada um tem sua estética de ambiente diferente, além de terem alguns fatores naturais únicos que o jogador enfrentará para vencer seus adversários. Com diversas opções de carros com diferentes habilidades especiais e estilos que os tornam mais incríveis e divertidos. Fique atento à pista e não relaxe pois será ultrapassado.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'ABeeZee',
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      SizedBox(
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () => navegacao(const GamePag()),
                          style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 187, 0))),
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
            )
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