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
  int _opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 119, 0, 0),
        title: const Text('Caos Cruiser',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: const Color.fromARGB(255, 119, 0, 0),
        currentIndex: _opcaoSelecionada,
        onTap: (opcao){
          setState(() {
            _opcaoSelecionada = opcao;
          });
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
      )
    )
    );
  }
}

class HomePag extends StatelessWidget{
  const HomePag ({super.key,});

  @override
  Widget build(BuildContext context){
  return const Scaffold(
    body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Caos Cruiser',
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
    body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Jogo',
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
    body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Personagem',
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
    body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Personagem',
            ),
          ],
        ),
      ),
  );
}
}