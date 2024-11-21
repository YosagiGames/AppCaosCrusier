import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/carro.dart';
import 'package:caoscruisermobile/classes/cenario.dart';
import 'package:caoscruisermobile/carropag.dart';
import 'package:caoscruisermobile/cenariopag.dart';

class CarCenPag extends StatefulWidget{
  const CarCenPag ({super.key,});

  @override
  State<CarCenPag> createState() => _CarCenPag();
}

class _CarCenPag extends State<CarCenPag> {

  List<Carro> carros = [
    Carro(
      textosPag: [
        'CARROS',
      ],
      nomeCarro: 'Apophis',
      img: [
        'img/carros/1/car01.jpeg',
      ],
      habilidade: 'habilidade',
      origem: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
      ],
      nomeCarro: 'Caçador', 
      img: [
        'img/carros/2/car01.jpeg',
      ],
      habilidade: 'habilidade',
      origem: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
      ],
      nomeCarro: 'E.V.A.',
      img: [
        'img/carros/3/car01.jpeg',
      ],
      habilidade: 'habilidade',
      origem: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
      ],
      nomeCarro: 'Mercúrio',
      img: [
        'img/carros/4/car01.jpeg',
      ],
      habilidade: 'habilidade',
      origem: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
      ],
      nomeCarro: 'Raptor',
      img: [
        'img/carros/5/car01.jpeg',
      ],
      habilidade: 'habilidade',
      origem: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
      ],
      nomeCarro: 'Ultravioleta',
      img: [
        'img/carros/6/car01.jpeg',
      ],
      habilidade: 'habilidade',
      origem: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
  ];

  List<Cenario> cenarios = [
    Cenario(
      tituloPag: 'CENÁRIOS',
      nome: 'Fujikawa',
      nomeOg: 'Japão',
      img: [
        'img/carros/1/car01.jpeg',
      ],
      desc: 'Descrição.',
      estetica: '',
      desafios: [
        '1',
        '2'
      ],
      historia: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Cenario(
      tituloPag: 'CENÁRIOS',
      nome: 'Guarapári',
      nomeOg: 'Brasil',
      img: [
        'img/carros/2/car01.jpeg',
      ],
      desc: 'Descrição.',
      estetica: '',
      desafios: [
        '1',
        '2'
      ],
      historia: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Cenario(
      tituloPag: 'CENÁRIOS',
      nome: 'Harimo',
      nomeOg: 'Egito',
      img: [
        'img/carros/3/car01.jpeg',
      ],
      desc: 'Descrição.',
      estetica: '',
      desafios: [
        '1',
        '2'
      ],
      historia: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Cenario(
      tituloPag: 'CENÁRIOS',
      nome: 'Melbourne',
      nomeOg: 'Austrália',
      img: [
        'img/carros/4/car01.jpeg',
      ],
      desc: 'Descrição.',
      estetica: '',
      desafios: [
        '1',
        '2'
      ],
      historia: '',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Cenario(
      tituloPag: 'CENÁRIOS',
      nome: 'Neo Londres',
      nomeOg: 'Reino Unido',
      img: [
        'img/carros/5/car01.jpeg',
      ],
      desc: 'Descrição.',
      estetica: '',
      desafios: [
        '1',
        '2'
      ],
      historia: '',
      icons: [
        Icons.arrow_back_ios,
      ],
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
          'CARROS E CENÁRIOS',
          style: TextStyle(
            fontFamily: 'MonsterRacing',
            color: Color.fromARGB(255, 255, 187, 0),
          ),
        ),
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
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
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
                        child: Column(
                          children: [
                            carros[0].construirTitulo(title: carros[0].textosPag[0]),
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
                                child: IconButton(
                                  onPressed: () => navegacaoCarro(), 
                                  icon: Image.asset(carros[0].img[0]),
                                  tooltip: carros[0].nomeCarro,
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
                                    tooltip: carros[1].nomeCarro,
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
                                    tooltip: carros[2].nomeCarro,
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
                                    tooltip: carros[3].nomeCarro,
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
                                    tooltip: carros[4].nomeCarro,
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
                                    tooltip: carros[5].nomeCarro,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(16.0),
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.black),
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
                      child: Column(
                        children: [
                          cenarios[0].construirTitulo(title: cenarios[0].tituloPag),
                          CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              autoPlayAnimationDuration: const Duration(seconds: 3),
                              autoPlayInterval: const Duration(seconds: 7),
                              enlargeCenterPage: true,
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
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}