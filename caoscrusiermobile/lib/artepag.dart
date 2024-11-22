import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:caoscruisermobile/classes/arte.dart';

class ArtePag extends StatefulWidget{
  const ArtePag ({super.key,});

  @override
  State<ArtePag> createState() => _ArtePag();
}

class _ArtePag extends State<ArtePag> {

  int index = 0;

  List<Arte> artes = [
    Arte(
      titulo: 'HUD',
      imgs: [
        'img/arte/hud/telaMenu.png',
        'img/arte/hud/telaConfig.png',
        'img/arte/hud/ImgHUD.png',
        'img/arte/hud/posicaoElementos.png',
        'img/arte/hud/selecaoCenarioPosicao.png',
        'img/arte/hud/resultadosPosicao.png',
      ],
      desc: 'O HUD é a interface do usuário, ela inclui: menu, configurações, tela de jogo (o velocimetro, informações do personagem e contagem de tempo e ultrapassagem), tela de pause e tela de resultados. Cada parte foi pensada de uma forma que complemente o jogo, combinando com o visual de Caos Crusier.',
      icons: [
        Icons.arrow_back_ios
      ],
    ),
    Arte(
      titulo: 'LEVEL DESIGN',
      imgs: [
        'img/arte/level_design/australia.jpg',
        'img/arte/level_design/brasil.jpg',
        'img/arte/level_design/egito1.jpg',
        'img/arte/level_design/egito2.jpg',
        'img/arte/level_design/japao.jpeg',
        'img/arte/level_design/reino_unido.jpeg',
      ],
      desc: 'O level design define o formato das pistas de cada cenário de Caos Crusier, portanto, sendo um jogo de corrida, nos baseamos em pistas reais, obras culturais e os mapas dos locais para montar cada uma das pistas.',
      icons: [
        Icons.arrow_back_ios
      ],
    ),
    Arte(
      titulo: '',
      imgs: [
        '',
      ],
      desc: 'desc',
      icons: [
        Icons.arrow_back_ios
      ],
    ),
  ];
  
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
          'ARTE',
          style: TextStyle(
            fontFamily: 'MonsterRacing',
            color: Color.fromARGB(255, 255, 187, 0),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 64, 4, 89),
                  Color.fromARGB(255, 14, 1, 55),
                ],
              ),
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  margin: const EdgeInsets.all(16.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 82, 0, 102),
                        Color.fromARGB(255, 90, 0, 126),
                        Color.fromARGB(255, 119, 0, 143),
                      ],
                    )
                  ),
                  child: Column(
                    children: [
                      artes[0].construirTitulo(title: artes[0].titulo,),
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: const Duration(seconds: 3),
                          autoPlayInterval: const Duration(seconds: 7),
                          enlargeCenterPage: true,
                          onPageChanged: (currentIndex, reason) {
                            setState(() {
                              index = currentIndex;
                            });
                          },
                        ),
                        items: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[0].imgs[0], width: 350, height: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[0].imgs[1], width: 350, height: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[0].imgs[2], width: 350, height: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[0].imgs[3], width: 350, height: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[0].imgs[4], width: 350, height: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[0].imgs[5], width: 350, height: 350,),
                          ),
                        ],
                      ),
                      Text(
                        artes[0].desc,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'AbeeZee',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  margin: const EdgeInsets.all(16.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 82, 0, 102),
                        Color.fromARGB(255, 90, 0, 126),
                        Color.fromARGB(255, 119, 0, 143),
                      ],
                    )
                  ),
                  child: Column(
                    children: [
                      artes[1].construirTitulo(title: artes[1].titulo),
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: const Duration(seconds: 3),
                          autoPlayInterval: const Duration(seconds: 7),
                          enlargeCenterPage: true,
                          onPageChanged: (currentIndex, reason) {
                            setState(() {
                              index = currentIndex;
                            });
                          },
                        ),
                        items: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[1].imgs[0], height: 350, width: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[1].imgs[1], height: 350, width: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[1].imgs[2], height: 350, width: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[1].imgs[3], height: 350, width: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[1].imgs[4], height: 350, width: 350,),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[1].imgs[5], height: 350, width: 350,),
                          ),
                        ],
                      ),
                      Text(
                        artes[1].desc,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                /*Padding(padding: EdgeInsets.all(10)),
                Container(
                  margin: const EdgeInsets.all(16.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 82, 0, 102),
                        Color.fromARGB(255, 90, 0, 126),
                        Color.fromARGB(255, 119, 0, 143),
                      ],
                    )
                  ),
                  child: Column(
                    children: [
                      artes[2].construirTitulo(title: artes[2].titulo),
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: const Duration(seconds: 3),
                          autoPlayInterval: const Duration(seconds: 7),
                          enlargeCenterPage: true,
                          onPageChanged: (currentIndex, reason) {
                            setState(() {
                              index = currentIndex;
                            });
                          },
                        ),
                        items: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 0, 20, 49), 
                            ),
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[2].imgs[0]),
                          ),
                        ],
                      ),
                      Text(
                        artes[2].desc,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}