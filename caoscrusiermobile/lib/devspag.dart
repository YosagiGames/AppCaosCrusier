import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/dev.dart';
import 'package:caoscruisermobile/classes/jogo.dart';
import 'package:caoscruisermobile/classes/empresa.dart';

class DevsPag extends StatefulWidget{
  const DevsPag ({super.key,});

  @override
  State<DevsPag> createState() => _DevsPag();
}

class _DevsPag extends State<DevsPag> {

  int index = 0;
  final ScrollController _controller = ScrollController();

  List<Dev> devs = [
    Dev(
      'Filipe Custodio',
      'img/devs/FilipeCustodioFoto.png',
      'Funções: programação e modelagem 3D.',
    ),
    Dev(
      'Gabriele Batista',
      'img/devs/GabrieleBatistaFoto.png',
      'Funções: game art e marketing de redes sociais.',
    ),
    Dev(
      'Letícia da Lapa',
      'img/devs/LeticiaLapaFoto.jpeg',
      'Funções: modelagem 3D e documentação.',
    ),
    Dev(
      'Mariana Santiago',
      'img/devs/MarianaSantiagoFoto.jpg',
      'Funções: game art e marketing de redes sociais.',
    ),
    Dev(
      'Mariana Telis',
      'img/devs/YuriTelisFoto.jpg',
      'Funções: desenvolvimento do aplicativo, level design e documentação.',
    ),
    Dev(
      'Robert Caio',
      'img/devs/RobertCaioFoto.jpeg',
      'Funções: programação e modelagem 3D.',
    ),
  ];

  final Empresa yosagiGames = Empresa(
    'Yosagi Games',
    'img/yosagilogo.jpg',
    'A Yosagi Games é uma empresa de desenvolvimento de jogos criada para o TCC do curso técnico de Programação de Jogos Digitais.'
  );
  
  @override
  Widget build(BuildContext context){

    final caosCrusier = ModalRoute.of(context)!.settings.arguments as Jogo;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 26, 0, 39), 
                Color.fromARGB(255, 125, 0, 132)
              ]
            ),
          ),
        ),
        leading: caosCrusier.construirIconButton(
          icon: Icon(caosCrusier.icons[5]),
          onPressed: () => Navigator.pop(context),
        ),
        title: caosCrusier.construirTitleAppBar(title: caosCrusier.textosPag[2]),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 64, 4, 89),
                  Color.fromARGB(255, 14, 1, 55),
                ],
              ),
            ),
            child: Column (
              children: [
                Container(
                  margin: const EdgeInsets.all(16.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 82, 0, 102),
                        Color.fromARGB(255, 90, 0, 126),
                        Color.fromARGB(255, 119, 0, 143),
                      ],
                    ),
                  ),
                  child: SizedBox(
                    width: 430, 
                    child: Column(
                      children: [
                        yosagiGames.construirTitulo(title: yosagiGames.nome,),
                        CircleAvatar(foregroundImage: AssetImage(yosagiGames.logo), maxRadius: 150,),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          yosagiGames.desc,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'ABeeZee',
                            fontSize: 15
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(45)),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 82, 0, 102),
                            Color.fromARGB(255, 90, 0, 126),
                            Color.fromARGB(255, 119, 0, 143),
                          ],
                        )
                      ),
                      child: Column(
                        children: [
                          devs[index].construirTitulo(title: devs[index].nome,),
                          Image.asset(devs[index].foto, width: 350, height: 350,),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            devs[index].funcao,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'ABeeZee',
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  controller: _controller,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(5),
                  clipBehavior: Clip.antiAlias,
                ),
              ],
            )
          ),
        ),
      )
    );
  }
}