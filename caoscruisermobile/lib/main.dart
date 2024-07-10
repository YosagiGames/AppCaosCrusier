import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key,});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _opcaoSelecionada = 0; //define qual é a página da BottomNavigationBar

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 150, 0, 0), //cor de fundo da AppBar
        title: const Text('Caos Cruiser',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //define que a BottomnavigationBar pode ter mais do que 3 itens
        fixedColor: const Color.fromARGB(255, 209, 209, 209),
        backgroundColor: const Color.fromARGB(255, 150, 0, 0),
        currentIndex: _opcaoSelecionada,
        onTap: (opcao){
          setState(() {
            _opcaoSelecionada = opcao;
          }); //define o estado da BottomNavigationBar de acordo com a opção que foi selecionada
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports),
            label: 'Sobre o jogo'),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_motorsports),
            label: 'Personagens'),
          BottomNavigationBarItem(
            icon: Icon(Icons.image_rounded),
            label: 'Cenários'),
        ], 
      ),
      body: IndexedStack(
        index: _opcaoSelecionada,
        children: const <Widget>[
          Home(),
          Game(),
          Personagem(),
          Cenario(),
        ],
      ) //função que faz a mudança de tela usando o index
    )
    );
  }
}

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
                    fontWeight: FontWeight.bold,
                    color: Colors.white,),
                  ),
                ),
                const SizedBox(
                  width: 380,
                  child: Text('Se passa ao redor do mundo viajando por alguns países como Inglaterra, Brasil, Japão, Austrália e Egito, onde cada um tem sua estética de ambiente diferente, além de terem alguns fatores naturais únicos que o jogador enfrentará para vencer seus adversários. Com diversas opções de carros com diferentes habilidades especiais e estilos que os tornam mais incríveis e divertidos. Fique atento à pista e não relaxe pois será ultrapassado.',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
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
        child: const Column(
          children: <Widget>[
             Text(
              'Jogo',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),)
  );
}
}

class Personagem extends StatelessWidget{
  const Personagem ({super.key,});

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
        child: Column(
          children: <Widget>[
             const Text(
              'Personagem',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Image.asset('img/carro_gt40.png'),
          ],
        ),
      ),)
  );
}
}

class Cenario extends StatelessWidget{
  const Cenario ({super.key,});

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
        child: Column(
          children: <Widget>[
            const Text(
              'Cenário',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Image.asset('img/scene_jp.png'),
          ],
        ),
      ),)
  );
}
}