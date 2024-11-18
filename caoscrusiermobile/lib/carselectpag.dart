import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:caoscruisermobile/carro.dart';
import 'package:caoscruisermobile/carropag.dart';

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

  //final ScrollController _controller = ScrollController();
  int index = 0;

  navegacao(){
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
                        borderRadius: BorderRadius.circular(45),
                        color: const Color.fromARGB(255, 0, 20, 49), 
                      ),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
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
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(carros[1].img[0]),
                        tooltip: carros[1].nome,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: const Color.fromARGB(255, 0, 20, 49), 
                      ),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(carros[2].img[0]),
                        tooltip: carros[2].nome,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: const Color.fromARGB(255, 0, 20, 49), 
                      ),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(carros[3].img[0]),
                        tooltip: carros[3].nome,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: const Color.fromARGB(255, 0, 20, 49), 
                      ),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(carros[4].img[0]),
                        tooltip: carros[4].nome,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: const Color.fromARGB(255, 0, 20, 49), 
                      ),
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () => navegacao(), 
                        icon: Image.asset(carros[5].img[0]),
                        tooltip: carros[5].nome,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}