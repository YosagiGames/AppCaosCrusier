import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/jogo.dart';

class GamePag extends StatelessWidget{
  const GamePag ({super.key,});

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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,),
            color: const Color.fromARGB(255, 255, 187, 0),
            onPressed: () => Navigator.pop(context),
          ),
          title: construirTitulo(title: caosCrusier.textosPag[5]),
          centerTitle: true,
        ),
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'Sobre o Jogo',
                      style: TextStyle(
                        fontFamily: 'ABeeZee', fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Image.asset('img/paggame.png', width: 310, height: 200,),
                    const SizedBox(
                      width: 380,
                      child: Text(
                        'Em busca do título de melhor do mundo e de suporte com melhorias tecnológicas, 6 pilotos competem entre si na [corrida super daora] em uma tour intercontinental que passa por 5 países (Austrália, Brasil, Egito, Inglaterra e Japão).',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'ABeeZee', fontSize: 15, color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
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