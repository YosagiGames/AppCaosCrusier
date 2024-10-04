import 'package:flutter/material.dart';

class GamePag extends StatelessWidget{
  const GamePag ({super.key,});

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
        ),)
      )
  );
}
}