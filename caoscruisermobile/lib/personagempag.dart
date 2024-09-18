import 'package:flutter/material.dart';
import 'package:caoscruisermobile/personagem.dart';
import 'dart:async';

class PersonagemPag extends StatefulWidget{
  const PersonagemPag ({super.key,});

  @override
  State<PersonagemPag> createState() => _PersonagemPag();
}

class _PersonagemPag extends State<PersonagemPag> {

  List<Personagem> personagens = [
    Personagem('Apophis', 'img/carros/apophis.jpeg', 'nomepiloto', 'habilidade'),
    Personagem('Caçador', 'img/carros/cacador.jpeg', 'nomepiloto', 'habilidade'),
    Personagem('E.V.A.', 'img/carros/eva.jpeg', 'nomepiloto', 'habilidade'),
    Personagem('Mercúrio', 'img/carros/mercurio.jpeg', 'nomepiloto', 'habilidade'),
    Personagem('Raptor', 'img/carros/raptor.jpeg', 'nomepiloto', 'habilidade'),
    Personagem('Ultravioleta', 'img/carros/ultravioleta.jpeg', 'nomepiloto', 'habilidade'),
  ];

  int index = 0;

  avancar(){
    setState(() {
      index = index + 1;
    });
    if(index >= 6){
      index = 0;
    }
  }

  voltar(){
    setState(() {
      index = index - 1;
    });
    if(index <= -1){
      index = 5;
    }
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
                Color.fromARGB(255, 26, 26, 26),
                Color.fromARGB(193, 81, 81, 81),
              ],
            )
          ),
        child: Center(
          child: Column(
          children: [
            Text(personagens[index].nome, style: const TextStyle(color: Colors.white),),
            Image.asset(personagens[index].img),
            Text(personagens[index].nomepiloto, style: const TextStyle(color: Colors.white),),
            Text(personagens[index].habilidade, style: const TextStyle(color: Colors.white),),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    voltar();
                  }, 
                  child: const Icon(Icons.arrow_back_ios),),
                  ElevatedButton(
                    onPressed:(){
                      avancar();
                    },
                    child: const Icon(Icons.arrow_forward_ios,
                      /*style: TextStyle(color: Color.fromARGB(255, 150, 0, 0)),*/)
                  ),
                  const Padding(padding: EdgeInsets.all(2),),
                ],
              ),
          ],
          ),
        ),
      )
    )
  );
}
}