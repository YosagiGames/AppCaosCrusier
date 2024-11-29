import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/jogo.dart';
import 'package:caoscruisermobile/inspopag.dart';
import 'package:caoscruisermobile/gamepag.dart';
import 'package:caoscruisermobile/devspag.dart';

void main() {
  runApp(const MaterialApp (
    title: "App",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key,});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {

  final Jogo caosCrusier = const Jogo (
    textosPag: [
      'Sobre o Jogo',
      'Nossa Inspiração',
      'Créditos',
      'Características',
      'Objetivo do Jogo',
      'Temática',
      'Por que estamos fazendo Caos Crusier?',
      'Veja a história de Caos Crusier',
      'Outras informações',
      'Carros e Cenários',
      'Controles'
    ],
    titulo: 'Caos Crusier',
    capa: 'img/capa.jpg',
    imgs: [
      'img/cenarios/1/japao portal.jpeg',
      'img/cenarios/2/BrasilCapsula.jpeg',
      'img/cenarios/4/OperaHouse.jpeg',
      'img/cenarios/5/palacio.jpeg',
      'img/cenarios/5/RaptorPalacio.png',
      'img/yosagilogo.jpg',
    ],
    sinopse: 'Caos Crusier é um jogo de corrida retrô inspirado nos jogos de corrida clássico dos anos 80 a 90, com o objetivo de ultrapassar diversos carros em um período de um dia. Se passa ao redor do mundo viajando por alguns países como Inglaterra, Brasil, Japão, Austrália e Egito, onde cada um tem sua estética de ambiente diferente, além de terem alguns fatores naturais únicos que o jogador enfrentará para vencer seus adversários. Com diversas opções de carros com diferentes habilidades especiais e estilos que os tornam mais incríveis e divertidos. Fique atento à pista e não relaxe pois será ultrapassado.',
    caracteristicas: 'O jogo Caos Crusier é um jogo de corrida ambientado em um universo 3D. Utilizando de seleção de carros e cenários de forma dinâmica e clara, suas características se baseiam por transmitir o lúdico juntamente com a ficção científica, a essência de competitividade e adrenalina... Dessa forma, trazendo a imersão da verdadeira velocidade para o jogador que desfrutar de nosso universo. O jogador terá abertura para escolher seus carros, ao qual, cada um possui suas habilidades específicas. Também, deverá escolher sua pista que possuem ambientações complexas e diversificadas, niveis de dificuldades e fatos climáticos, o verdadeiro diferencial.',
    objetivo: 'O objetivo de Caos Crusier é ultrapassar a maior quantidade de carros possíveis para aquele trajeto… Vence o jogador que atingir a quantidade estipulada. Mas também, não se deicando cair no esqeucimento a sensação de poder selecionar seu carro e cenário, apreciar de sua habilidade e liberdade durante a corrida.',
    tematica: 'De modo geral, todo o jogo está envolto na paleta de cores retrowave, construindo uma identidade visual única para nosso projeto e remetendo ao nosso objetivo inicial, migrar de um jogo retrô e traze-lo para dias atuais. Adentrando aos cenários, cada um particularmente, possui suas próprias temáticas e inspirações, assim como, os nossos personagens carros que também possuem suas temáticas únicas e entrelaçadas com nosso universo geral e história de cada país.',
    motivoJogo: 'A empresa automobilística Vektor MotorSports solicitou para a Yosagi Games produzir um jogo retrô baseado em algum outro, o qual tem que ter sido lançado entre os anos 60 e 90 e não poderia ter uma continuação. Durante a pesquisa que foi feita foram encontrados diversos jogos e um que chamou a atenção da equipe foi Enduro, um jogo de corrida singleplayer (onde só um jogador pode jogar por vez) feito pela Activision e distribuído para consoles (outra nomenclatura para videogame) da Atari. Com isso, a equipe fez Caos Cruiser, um jogo de corrida 3D que se passa por várias partes do globo terrestre e traz ao jogador a possibilidade de escolher qual veículo irá utilizar.',
    controles: [
      'Tecla W = permite o carro acelerar.',
      'Tecla A = permite o carro virar para a direita.',
      'Tecla S = permite o carro virar para a esquerda.',
      'Tecla D = permite o carro dar ré ou frear.',
      'Tecla Tab = permite o jogador rever os controles do jogo.',
      'Tecla Esc = permite o jogador pausar o jogo e ver as configurações, ir para o menu ou sair do jogo.',
    ],
    icons: [
      Icons.home,
      Icons.sports_esports,
      Icons.brush_rounded,
      Icons.sports_motorsports_rounded,
      Icons.image,
      Icons.arrow_back_ios
    ]
  );

  @override
  Widget build(BuildContext context){
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
                  Color.fromARGB(255, 26, 0, 39), 
                  Color.fromARGB(255, 125, 0, 132),
                ]
              ),
            ),
          ), // cor de fundo da AppBar
          title: Text(
            caosCrusier.titulo.toUpperCase(),
            style: TextStyle(
              fontFamily: 'MonsterRacing',
              color: Color.fromARGB(255, 255, 187, 0),
            ),
          ),
          centerTitle: true,
          leading: caosCrusier.construirIconButton(
            icon: CircleAvatar(foregroundImage: AssetImage(caosCrusier.imgs[5]),),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DevsPag(),
                settings: RouteSettings(
                  arguments: caosCrusier,
                ),
              ),
            ),
          ),
        ),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 64, 4, 89),
                  Color.fromARGB(255, 14, 1, 55),
                ],
              )
            ),
            child: Align(
              child: Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 88, 0, 123),
                      Color.fromARGB(255, 57, 0, 71),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(caosCrusier.capa, width: 400, height: 380,),
                      Text(
                        caosCrusier.sinopse,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      caosCrusier.construirTitulo(title: caosCrusier.textosPag[8]),
                      Padding(padding: EdgeInsets.all(5)),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GamePag(),
                              settings: RouteSettings(
                                arguments: caosCrusier,
                              )
                            ),
                          );},
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 187, 0))
                          ),
                          child: caosCrusier.construirTextoBotao(title: caosCrusier.textosPag[0])
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InspoPag(),
                              settings: RouteSettings(
                                arguments: caosCrusier,
                              )
                            ),
                          );},
                          style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 187, 0)),),
                          child: caosCrusier.construirTextoBotao(title: caosCrusier.textosPag[1])
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}