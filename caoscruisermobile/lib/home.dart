import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home ({super.key,});

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
                Image.asset('img/capa.png', width: 310, height: 200,),
                const SizedBox(
                  width: 380,
                  child: Text('Caos Cruiser é um jogo de corrida retrô inspirado nos jogos de corrida clássico dos anos 80 a 90, com o objetivo de ultrapassar diversos carros em um período de um dia.',
                    style: TextStyle(
                    color: Colors.white,),
                  ),
                ),
                const SizedBox(
                  width: 380,
                  child: Text('Se passa ao redor do mundo viajando por alguns países como Inglaterra, Brasil, Japão, Austrália e Egito, onde cada um tem sua estética de ambiente diferente, além de terem alguns fatores naturais únicos que o jogador enfrentará para vencer seus adversários. Com diversas opções de carros com diferentes habilidades especiais e estilos que os tornam mais incríveis e divertidos. Fique atento à pista e não relaxe pois será ultrapassado.',
                    style: TextStyle(
                    color: Colors.white,),
                  ),
                ),
              ]
          ),
        ),
      ),
  )
  );
}
}