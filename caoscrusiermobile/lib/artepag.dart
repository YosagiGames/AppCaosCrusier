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
        '',
      ],
      desc: 'desc',
      icons: [
        Icons.arrow_back_ios
      ],
    ),
    Arte(
      titulo: 'LEVEL DESIGN',
      imgs: [
        '',
      ],
      desc: 'desc',
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
                            child: Image.asset(artes[0].imgs[0]),
                          ),
                        ],
                      ),
                      Text(
                        artes[0].desc,
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
                            padding: const EdgeInsets.all(20.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Image.asset(artes[1].imgs[0]),
                          ),
                        ],
                      ),
                      Text(
                        artes[1].desc,
                        style: TextStyle(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}