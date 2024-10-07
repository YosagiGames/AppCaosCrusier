import 'package:flutter/material.dart';
import 'package:caoscruisermobile/homepag.dart';
import 'package:caoscruisermobile/gamepag.dart';
import 'package:caoscruisermobile/historiapag.dart';
import 'package:caoscruisermobile/artepag.dart';
import 'package:caoscruisermobile/carselectpag.dart';
import 'package:caoscruisermobile/cenarioselectpag.dart';

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
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 0, 20, 49), 
                Color.fromARGB(255, 15, 66, 107)
              ]
            ),
          ),
        ), //cor de fundo da AppBar
        title: const Text('Caos Cruiser',
          style: TextStyle(color: Color.fromARGB(255, 255, 187, 0),),),
        centerTitle: true,
      ),
      bottomNavigationBar: Stack(
        children: [
          Container( //container customizado para ser do tamanho da BottomNavigationBar e dar o efeito gradiente
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 15, 66, 107),
                  Color.fromARGB(255, 0, 20, 49),
                ],
              ),
            ),
            height: 60, //altura do container
          ),
          BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed, //define que a BottomnavigationBar pode ter mais do que 3 itens
            fixedColor: const Color.fromARGB(255, 255, 187, 0),
            unselectedItemColor: const Color.fromARGB(255, 163, 119, 23),
            currentIndex: _opcaoSelecionada,
            onTap: (opcao){
              setState(() {
                _opcaoSelecionada = opcao;
              }); //define o estado da BottomNavigationBar de acordo com a opção que foi selecionada
            },
            items: const [ //itens da BottomNavigationBar
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_esports),
                label: 'Sobre o jogo'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.auto_stories),
                label: 'História'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.brush_rounded),
                label: 'Arte'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_motorsports),
                label: 'Personagens'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.image_rounded),
                label: 'Cenários'
              ),
            ], 
          ),
        ]
      ),
      body: IndexedStack( //função que faz a mudança de tela usando o index
        index: _opcaoSelecionada,
        children: const <Widget>[
          HomePag(),
          GamePag(),
          HistoriaPag(),
          ArtePag(),
          CarSelectPag(),
          CenarioSelectPag(),
        ],
      )
    )
    );
  }
}