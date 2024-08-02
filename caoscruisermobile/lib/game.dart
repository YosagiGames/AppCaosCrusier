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
              'Cenário',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Image.asset('img/paggame.png', width: 310, height: 200,),
            const SizedBox(
              width: 380,
              child: Text('"Caos Cruiser" é um jogo digital de corrida fantasioso baseado em "Enduro" da Atari, ele possui 6 carros diferentes para o jogador escolher e 5 cenários. Ele surgiu após a Vektor MotorSports solicitar um jogo de corrida inspirado em um jogo lançado entre os anos 60 e 90 e que não tivesse continuação.',
              style: TextStyle(
                color: Colors.white,
              ),),
            ),
          ],
        ),
      ),)
      )
  );
}
}