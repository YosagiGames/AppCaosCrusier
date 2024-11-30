import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/jogo.dart';
import 'package:caoscruisermobile/classes/enduro.dart';

class InspoPag extends StatefulWidget {
  const InspoPag({super.key,});

  @override
  State<InspoPag> createState() => _InspoPag();
}

class _InspoPag extends State<InspoPag> {

  bool isTocando = false;

  final Enduro enduro = Enduro(
    textosPag: [
      'Eventos',
      'Gameplay',
    ],
    titulo: 'Enduro',
    imgs: [
      'img/enduro/capaenduro.jpg',
      'img/enduro/endurodia.jpg',
      'img/enduro/enduroneve.jpg',
      'img/enduro/enduronoite.jpg',
      'img/enduro/enduronevoa.jpg',
      'img/enduro/enduroamanhecer.jpg',
      'img/enduro/enduroanoitecer.jpg',
    ],
    desc: 'Enduro é um jogo de corrida desenvolvido pela Activision e distribuido para Atari 2600 em 1983. Ele retrata uma corrida de resistência que dura 24 horas onde o piloto (jogador) tem o objetivo de ultrapassar diversos carros, superando obstáculos do clima e do dia e noite.',
    eventos: 'Os eventos de Enduro são gerados de acordo com o período e, por não serem aleatórios, são fáceis de se adaptar.',
    icons: [
      Icons.play_arrow_rounded,
      Icons.pause_rounded,
    ],
  );

  @override
  Widget build(BuildContext context){
    final caosCrusier = ModalRoute.of(context)!.settings.arguments as Jogo;
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
                  Color.fromARGB(255, 26, 0, 39), 
                  Color.fromARGB(255, 125, 0, 132)
                ]
              ),
            ),
          ), // cor de fundo da AppBar
          leading: enduro.construirIconButton(
            icon: Icon(caosCrusier.icons[5]),
            onPressed: () => Navigator.pop(context),
          ),
          title: enduro.construirTitleAppBar(title: caosCrusier.textosPag[1]),
          centerTitle: true,
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
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 88, 0, 123),
                      Color.fromARGB(255, 57, 0, 71),
                    ],
                  )
                ),
                child: Column(
                  children: [
                    enduro.construirTitulo(title: enduro.titulo),
                    Padding(padding: EdgeInsets.all(10)),
                    Image.asset(enduro.imgs[0], height: 400, width: 400,),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      enduro.desc,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    enduro.construirTitulo(title: enduro.textosPag[0]),
                    Padding(padding: EdgeInsets.all(5)),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(seconds: 3),
                        autoPlayInterval: Duration(seconds: 7),
                      ),
                      items: [
                        Image.asset(enduro.imgs[1], height: 300, width: 300,),
                        Image.asset(enduro.imgs[2], height: 300, width: 300,),
                        Image.asset(enduro.imgs[3], height: 300, width: 300,),
                        Image.asset(enduro.imgs[4], height: 300, width: 300,),
                        Image.asset(enduro.imgs[5], height: 300, width: 300,),
                        Image.asset(enduro.imgs[6], height: 300, width: 300,),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      enduro.eventos,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          )
        )
      )
    );
  }

  Widget construirTitulo({
    required String title
  }){
    return Text(
      title, 
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 187, 0)
      ),
    );
  }
}