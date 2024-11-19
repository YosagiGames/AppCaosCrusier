import 'package:flutter/material.dart' hide CarouselController;
import 'package:caoscruisermobile/cenario.dart';
import 'package:caoscruisermobile/cenariopag.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CenarioSelectPag extends StatefulWidget{
  const CenarioSelectPag ({super.key,});

  @override
  State<CenarioSelectPag> createState() => _CenarioSelectPag();
}

class _CenarioSelectPag extends State<CenarioSelectPag> {

  List<Cenario> cenarios = [
    Cenario(
      nome: 'Fujikawa', 
      img: [
        'img/carros/1/car01.jpeg'
      ], 
      nomeReal: 'Japão',
      desafios: [
        '1',
        '2'
      ]
    ),
    Cenario(
      nome: 'Guarapári', 
      img: [
        'img/carros/2/car01.jpeg'
      ], 
      nomeReal: 'Brasil',
      desafios: [
        '1',
        '2'
      ]
    ),
    Cenario(
      nome: 'Harimo', 
      img: [
        'img/carros/3/car01.jpeg'
      ], 
      nomeReal: 'Egito',
      desafios: [
        '1',
        '2'
      ]
    ),
    Cenario(
      nome: 'Melbourne', 
      img: [
        'img/carros/4/car01.jpeg'
      ], 
      nomeReal: 'Austrália',
      desafios: [
        '1',
        '2'
      ]
    ),
    Cenario(
      nome: 'Neo Londres', 
      img: [
        'img/carros/5/car01.jpeg'
      ], 
      nomeReal: 'Reino Unido',
      desafios: [
        '1',
        '2'
      ]
    ),
  ];

  //final ScrollController _controller = ScrollController();
  int index = 0;

  navegacao(){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => const CenarioPag(),
        settings: RouteSettings(
          arguments: cenarios[index]
        ),
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
                Color.fromARGB(255, 82, 0, 102),
                Color.fromARGB(255, 90, 0, 126),
                Color.fromARGB(255, 119, 0, 143),
              ],
            )
          ),
          child: Center(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(seconds: 3),
                    autoPlayInterval: const Duration(seconds: 10),
                    onPageChanged: (currentIndex, reason) {
                      setState((){
                        index = currentIndex;
                      });
                    },
                  ),
                  items: [
                    Container(
                      color: const Color.fromARGB(255, 0, 20, 49),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(cenarios[0].img[0]),
                        tooltip: cenarios[0].nome,
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 0, 20, 49),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(cenarios[1].img[0]),
                        tooltip: cenarios[1].nome,
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 0, 20, 49),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(cenarios[2].img[0]),
                        tooltip: cenarios[2].nome,
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 0, 20, 49),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(cenarios[3].img[0]),
                        tooltip: cenarios[3].nome,
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 0, 20, 49),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(cenarios[4].img[0]),
                        tooltip: cenarios[4].nome,
                      ),
                    ),
                  ],
                ),
              ]
            )
          )
      )
    ));
  }
}