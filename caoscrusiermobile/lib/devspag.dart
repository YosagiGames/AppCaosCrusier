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
  //final ScrollController _controller = ScrollController();

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
  
  @override
  Widget build(BuildContext context){

    final caosCrusier = ModalRoute.of(context)!.settings.arguments as Jogo;
    final yosagiGames = ModalRoute.of(context)!.settings.arguments as Empresa;

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
          icon: Icon(caosCrusier.icons[2]),
          onPressed: () => Navigator.pop(context),
        ),
        title: caosCrusier.construirTitleAppBar(title: caosCrusier.textosPag[3]),
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
                    ],)
                  ),
                ),
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
                    )
                  ),
                  child: SizedBox(
                    width: 430, 
                    child: Column(
                    children: [
                      devs[0].construirTitulo(title: devs[0].nome,),
                      Image.asset(devs[0].foto, width: 350, height: 350,),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[0].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                    ],)
                  ),
                ),
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
                    )
                  ),
                  child: SizedBox(
                    width: 430, 
                    child: Column(
                    children: [
                      devs[1].construirTitulo(title: devs[1].nome,),
                      Image.asset(devs[1].foto, width: 350, height: 350,),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[1].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      ),
                    ],)
                  ),
                ),
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
                    )
                  ),
                  child: SizedBox(
                    width: 430, 
                    child: Column(
                    children: [
                      devs[2].construirTitulo(title: devs[2].nome,),
                      Image.asset(devs[2].foto, width: 350, height: 350,),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[2].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      ),
                    ],),
                  ),
                ),
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
                    )
                  ),
                  child: SizedBox(
                    width: 430, 
                    child: Column(
                    children: [
                      devs[3].construirTitulo(title: devs[3].nome,),
                      Image.asset(devs[3].foto, width: 350, height: 350,),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[3].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      ),
                    ],)
                  ),
                ),
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
                    )
                  ),
                  child: SizedBox(
                    width: 430, 
                    child: Column(
                    
                    children: [
                      SizedBox(width: 380,),
                      devs[4].construirTitulo(title: devs[4].nome,),
                      Image.asset(devs[4].foto, width: 350, height: 350,),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[4].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      ),
                    ],)
                  ),
                ),
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
                    )
                  ),
                  child: SizedBox(
                    width: 430, 
                    child: Column(
                    children: [
                      devs[5].construirTitulo(title: devs[5].nome,),
                      Image.asset(devs[5].foto, width: 350, height: 350,),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[5].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      )
                    ],)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}