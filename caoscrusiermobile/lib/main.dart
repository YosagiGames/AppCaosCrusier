import 'package:flutter/material.dart';
import 'package:caoscruisermobile/jogo.dart';
import 'package:caoscruisermobile/homepag.dart';
import 'package:caoscruisermobile/artepag.dart';
import 'package:caoscruisermobile/carselectpag.dart';
import 'package:caoscruisermobile/cenarioselectpag.dart';

void main() {
  runApp(const MyApp());
}

class Main {
  final List<String> textos;
  final List<IconData> icons;

  Main ({
    required this.textos,
    required this.icons
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key,});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int opcaoSelecionada = 0; // define qual é a página da BottomNavigationBar
  
  final Jogo caosCrusier = const Jogo (
    textosPag: [
      'Home',
      'Sobre o Jogo',
      'Arte',
      'Carros',
      'Cenários',
      'Nossa Inspiração'
    ],
    titulo: 'Caos Crusier',
    capa: 'img/capa.png',
    sinopse: 'Caos Crusier é um jogo de corrida',
    caracteristicas: 'lalala',
    objetivo: 'o objetivo do jogo',
    tematica: 'O tema do jogo',
    motivoJogo: 'estamos fazendo Caos Crusier',
    icons: [
      Icons.home,
      Icons.sports_esports,
      Icons.brush_rounded,
      Icons.sports_motorsports_rounded,
      Icons.image,
      Icons.arrow_back_ios
    ]
  );

  navegacao(Widget pagina) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pagina,
      ),
    );
  }

  final Main main = Main (
    textos: [
      'Home',
      'Arte',
      'Carros',
      'Cenários'
    ],
    icons: [
      Icons.home_rounded,
      Icons.palette_outlined,
      Icons.sports_motorsports,
      Icons.image_outlined
    ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          ), // cor de fundo da AppBar
          title: construirTitulo(title: caosCrusier.titulo),
          centerTitle: true,
        ),
        bottomNavigationBar: Stack(
          children: [
            Container( // container customizado para ser do tamanho da BottomNavigationBar e dar o efeito gradiente
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
              height: 60, // altura do container/appbar
            ),
            BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed, // define que a BottomnavigationBar pode ter mais do que 3 itens
              fixedColor: const Color.fromARGB(255, 255, 187, 0),
              unselectedItemColor: const Color.fromARGB(255, 163, 119, 23),
              currentIndex: opcaoSelecionada,
              onTap: (opcao){
                setState(() {
                  opcaoSelecionada = opcao;
                }); // define o estado da BottomNavigationBar de acordo com a opção que foi selecionada
              },
              items: [ // itens da BottomNavigationBar
                BottomNavigationBarItem(
                  icon: Icon(main.icons[0]),
                  label: main.textos[0],
                ),
                BottomNavigationBarItem(
                  icon: Icon(main.icons[1]),
                  label: main.textos[1]
                ),
                BottomNavigationBarItem(
                  icon: Icon(main.icons[2]),
                  label: main.textos[2]
                ),
                BottomNavigationBarItem(
                  icon: Icon(main.icons[3]),
                  label: main.textos[3]
                ),
              ],             ),
          ]
        ),
        body: IndexedStack(
          index: opcaoSelecionada,
          children: const <Widget>[
            HomePag(),
            ArtePag(),
            CarSelectPag(),
            CenarioSelectPag(),
          ],
        )
      )
    );
  }

  Widget construirTitulo({
    required String title
  }) {
    return Text(title, style: const TextStyle(color: Color.fromARGB(255, 255, 187, 0),),);
  }
}