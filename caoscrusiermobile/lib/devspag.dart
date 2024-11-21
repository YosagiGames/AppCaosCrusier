import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/dev.dart';
import 'package:caoscruisermobile/classes/jogo.dart';

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
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(caosCrusier.icons[5])
        ),
        title: devs[0].construirTitleAppBar(title: caosCrusier.textosPag[6]),
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
                Expanded(
                  child: ListView.builder(
                    itemCount: devs.length,
                    controller: _controller,
                    itemBuilder: (BuildContext ctx, index){
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
                          ),
                        ),
                        child: Column(
                          children: [
                            devs[index].construirTitulo(title: devs[index].nome,),
                            Image.asset(devs[index].foto),
                            Padding(padding: EdgeInsets.all(5)),
                            Text(
                              devs[index].funcao,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'ABeeZee',
                                fontSize: 15
                              ),
                            ),
                          ],
                        ),
                      );
                    }
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