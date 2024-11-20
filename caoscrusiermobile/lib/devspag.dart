import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/dev.dart';

class DevsPag extends StatefulWidget{
  const DevsPag ({super.key,});

  @override
  State<DevsPag> createState() => _DevsPag();
}

class _DevsPag extends State<DevsPag> {

  int index = 0;

  List<Dev> devs = [
    Dev(
      'Filipe Custodio',
      'img/devs/filipe.jpg',
      'Funções: programação e modelagem 3D.',
    ),
    Dev(
      'Gabriele Batista',
      'foto',
      'Funções: game art e marketing de redes sociais.',
    ),
    Dev(
      'Letícia da Lapa',
      'foto',
      'Funções: modelagem 3D e documentação.',
    ),
    Dev(
      'Mariana Santiago',
      'foto',
      'Funções: game art e marketing de redes sociais.',
    ),
    Dev(
      'Mariana Telis',
      'foto',
      'Funções: desenvolvimento do aplicativo, level design e documentação.',
    ),
    Dev(
      'Robert Caio',
      'img/devs/robert.jpg',
      'Funções: programação e modelagem 3D.',
    ),
  ];
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios)
        ),
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
                    )
                  ),
                  child: Column(
                    children: [
                      devs[0].construirTitulo(title: devs[0].nome,),
                      Image.asset(devs[0].foto),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[0].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                    ],
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
                  child: Column(
                    children: [
                      devs[1].construirTitulo(title: devs[1].nome,),
                      Image.asset(devs[1].foto),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[1].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      ),
                    ],
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
                  child: Column(
                    children: [
                      devs[2].construirTitulo(title: devs[2].nome,),
                      Image.asset(devs[2].foto),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[2].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      ),
                    ],
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
                  child: Column(
                    children: [
                      devs[3].construirTitulo(title: devs[3].nome,),
                      Image.asset(devs[3].foto),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[3].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      ),
                    ],
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
                  child: Column(
                    children: [
                      devs[4].construirTitulo(title: devs[4].nome,),
                      Image.asset(devs[4].foto),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[4].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      ),
                    ],
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
                  child: Column(
                    children: [
                      devs[5].construirTitulo(title: devs[5].nome,),
                      Image.asset(devs[5].foto),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        devs[5].funcao,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15
                        ),
                      ),
                    ],
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