import 'package:flutter/material.dart';
import 'package:caoscruisermobile/homepag.dart';
import 'package:caoscruisermobile/gamepag.dart';
import 'package:caoscruisermobile/personagempag.dart';
import 'package:caoscruisermobile/cenariopag.dart';

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
          HomePag(),
          GamePag(),
          PersonagemPag(),
          CenarioPag(),
        ],
      ) //função que faz a mudança de tela usando o index
    )
    );
  }
}