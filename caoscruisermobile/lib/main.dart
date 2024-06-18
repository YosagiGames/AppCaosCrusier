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
        fixedColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 119, 0, 0),
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
            label: 'Perso e cenário'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Sobre a Yosagi'),
        ], 
      ),
      body: IndexedStack(
        index: _opcaoSelecionada,
        children: const <Widget>[
          HomePag(),
          GamePag(),
          PersoCenPag(),
          YosagiPag(),
        ],
      ) //função que faz a mudança de tela usando o index
    )
    );
  }
}

class HomePag extends StatelessWidget{
  const HomePag ({super.key,});

  @override
  Widget build(BuildContext context){
  return const Scaffold(
    backgroundColor: Color.fromARGB(255, 92, 0, 0),
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

class GamePag extends StatelessWidget{
  const GamePag ({super.key,});

  @override
  Widget build(BuildContext context){
  return const Scaffold(
    backgroundColor: Color.fromARGB(255, 92, 0, 0),
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

class PersoCenPag extends StatelessWidget{
  const PersoCenPag ({super.key,});

  @override
  Widget build(BuildContext context){
  return const Scaffold(
    backgroundColor: Color.fromARGB(255, 92, 0, 0),
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

class YosagiPag extends StatelessWidget{
  const YosagiPag ({super.key,});

  @override
  Widget build(BuildContext context){
  return const Scaffold(
    backgroundColor: Color.fromARGB(255, 92, 0, 0),
    body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Yosagi',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),
  );
}
}