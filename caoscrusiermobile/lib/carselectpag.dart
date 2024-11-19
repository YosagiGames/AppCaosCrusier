import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:caoscruisermobile/carro.dart';
import 'package:caoscruisermobile/cenario.dart';
import 'package:caoscruisermobile/carropag.dart';
import 'package:caoscruisermobile/cenariopag.dart';

class CarSelectPag extends StatefulWidget{
  const CarSelectPag ({super.key,});

  @override
  State<CarSelectPag> createState() => _CarSelectPag();
}

class _CarSelectPag extends State<CarSelectPag> {

  List<Carro> carros = [
    Carro(
      nome: 'Apophis',
      img: [
        'img/carros/1/car01.jpeg'
      ],
      nomepiloto: 'piloto',
      habilidade: 'habilidade'
    ),
    Carro(
      nome: 'Caçador', 
      img: [
        'img/carros/2/car01.jpeg'
      ], 
      nomepiloto: 'piloto', 
      habilidade: 'habilidade'
    ),
    Carro(
      nome: 'E.V.A.', 
      img: [
        'img/carros/3/car01.jpeg'
      ], 
      nomepiloto: 'piloto', 
      habilidade: 'habilidade'
    ),
    Carro(
      nome: 'Mercúrio', 
      img: [
        'img/carros/4/car01.jpeg'
      ], 
      nomepiloto: 'piloto', 
      habilidade: 'habilidade'
    ),
    Carro(
      nome: 'Raptor',
      img: [
        'img/carros/5/car01.jpeg'
      ], 
      nomepiloto: 'piloto', 
      habilidade: 'habilidade'
    ),
    Carro(
      nome: 'Ultravioleta', 
      img: [
        'img/carros/6/car01.jpeg'
      ], 
      nomepiloto: 'piloto', 
      habilidade: 'habilidade'
    ),
  ];

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

  navegacaoCarro(){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => const CarroPag(),
        settings: RouteSettings(
          arguments: carros[index],
        ),
      ),
    );
  }

  navegacaoCenario(){
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
                    Text(
                      'Carros',
                      style: TextStyle(
                        fontFamily: '',
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayAnimationDuration: const Duration(seconds: 3),
                        autoPlayInterval: const Duration(seconds: 7),
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
                          child: IconButton(
                            onPressed: () => navegacaoCarro(), 
                            icon: Image.asset(carros[0].img[0]),
                            tooltip: carros[0].nome,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: const Color.fromARGB(255, 0, 20, 49), 
                          ),
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () => navegacaoCarro(), 
                            icon: Image.asset(carros[1].img[0]),
                            tooltip: carros[1].nome,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 0, 20, 49), 
                          ),
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () => navegacaoCarro(), 
                            icon: Image.asset(carros[2].img[0]),
                            tooltip: carros[2].nome,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 0, 20, 49), 
                          ),
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () => navegacaoCarro(), 
                            icon: Image.asset(carros[3].img[0]),
                            tooltip: carros[3].nome,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 0, 20, 49), 
                          ),
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () => navegacaoCarro(), 
                            icon: Image.asset(carros[4].img[0]),
                            tooltip: carros[4].nome,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 0, 20, 49), 
                          ),
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () => navegacaoCarro(), 
                            icon: Image.asset(carros[5].img[0]),
                            tooltip: carros[5].nome,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Cenários',
                      style: TextStyle(
                        fontFamily: '',
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayAnimationDuration: const Duration(seconds: 3),
                        autoPlayInterval: const Duration(seconds: 7),
                        onPageChanged: (currentIndex, reason) {
                          setState((){
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
                          child: IconButton(
                            onPressed: () => navegacaoCenario(), 
                            icon: Image.asset(cenarios[0].img[0]),
                            tooltip: cenarios[0].nome,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 0, 20, 49), 
                          ),
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () => navegacaoCenario(), 
                            icon: Image.asset(cenarios[1].img[0]),
                            tooltip: cenarios[1].nome,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 0, 20, 49), 
                          ),
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () => navegacaoCenario(), 
                            icon: Image.asset(cenarios[2].img[0]),
                            tooltip: cenarios[2].nome,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 0, 20, 49), 
                          ),
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () => navegacaoCenario(), 
                            icon: Image.asset(cenarios[3].img[0]),
                            tooltip: cenarios[3].nome,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 0, 20, 49), 
                          ),
                          padding: const EdgeInsets.all(20.0),
                          margin: const EdgeInsets.all(10.0),
                          child: IconButton(
                            onPressed: () => navegacaoCenario(), 
                            icon: Image.asset(cenarios[4].img[0]),
                            tooltip: cenarios[4].nome,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}