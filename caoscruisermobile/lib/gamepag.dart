import 'package:flutter/material.dart';

class Game extends StatelessWidget{
  const Game ({super.key,});

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
                Color.fromARGB(255, 26, 26, 26),
                Color.fromARGB(193, 81, 81, 81),
              ],
            )
          ),
        child: Center(
          child: Column(
          children: [
            const Text(
              'Sobre o Jogo',
              style: TextStyle(
                fontFamily: 'ABeeZee',
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Image.asset('img/paggame.png', width: 310, height: 200,),
            const SizedBox(
              width: 380,
              child: Text(
                'Em busca do título de melhor do mundo e de suporte com melhorias tecnológicas, 6 pilotos competem entre si na [corrida super daora] em uma tour intercontinental que passa por 5 países (Austrália, Brasil, Egito, Inglaterra e Japão).',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'ABeeZee',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),)
      )
  );
}
}