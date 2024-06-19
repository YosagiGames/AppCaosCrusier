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
        backgroundColor: const Color.fromARGB(255, 119, 0, 0), //cor de fundo da AppBar
        title: const Text('Caos Cruiser',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //define que a BottomnavigationBar pode ter mais do que 3 itens
        fixedColor: Color.fromARGB(255, 218, 204, 13),
        backgroundColor: const Color.fromARGB(255, 99, 99, 99),
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
  return const Scaffold(
    backgroundColor: Color.fromARGB(255, 34, 34, 34),
    body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Caos Cruiser',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),
  );
}}

class Game extends StatelessWidget{
  const Game ({super.key,});

  @override
  Widget build(BuildContext context){
  return const Scaffold(
    backgroundColor: Color.fromARGB(255, 34, 34, 34),
    body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Jogo',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),
  );
}
}

class Personagem extends StatelessWidget{
  const Personagem ({super.key,});

  @override
  Widget build(BuildContext context){
  return const Scaffold(
    backgroundColor: Color.fromARGB(255, 34, 34, 34),
    body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Personagem',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),
  );
}
}

class Cenario extends StatelessWidget{
  const Cenario ({super.key,});

  @override
  Widget build(BuildContext context){
  return const Scaffold(
    backgroundColor: Color.fromARGB(255, 34, 34, 34),
    body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Cenário',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),
  );
}
}