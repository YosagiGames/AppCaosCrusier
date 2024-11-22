import 'package:caoscruisermobile/classes/cenario.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CenarioPag extends StatelessWidget{
  const CenarioPag ({super.key,});

  @override
  Widget build(BuildContext context){

    final cenario = ModalRoute.of(context)!.settings.arguments as Cenario;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 26, 0, 39), 
                Color.fromARGB(255, 125, 0, 132),
              ]
            ),
          ),
        ), //cor de fundo da AppBar
        title: cenario.construirTitleAppBar(title: cenario.textosPag[0]),
        centerTitle: true,
        leading: cenario.construirIconButton(
          icon: Icon(cenario.icons[0]),
          onPressed: (){
            Navigator.pop(context);
          },
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
          child: Center(
            child: Container(
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    cenario.construirTitulo(title: cenario.nome),
                    Padding(padding: EdgeInsets.all(7)),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 7),
                        autoPlayAnimationDuration: Duration(seconds: 3),
                        enlargeCenterPage: true,
                      ),
                      items: [
                        Image.asset(cenario.img[0], width: 350, height: 350,),
                        Image.asset(cenario.img[1], width: 350, height: 350,),
                        Image.asset(cenario.img[2], width: 350, height: 350,),
                        Image.asset(cenario.img[3], width: 350, height: 350,),
                        Image.asset(cenario.img[4], width: 350, height: 350,),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    cenario.construirTitulo(title: cenario.textosPag[1]),
                    Text(
                      cenario.nomeOg,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      cenario.historia,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      cenario.estetica,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    cenario.construirTitulo(title: cenario.textosPag[2]),
                    Text(
                      cenario.desafios,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}