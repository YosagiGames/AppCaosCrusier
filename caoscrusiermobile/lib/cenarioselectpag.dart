import 'package:flutter/material.dart';
import 'package:caoscruisermobile/cenario.dart';
import 'package:caoscruisermobile/cenariopag.dart';

class CenarioSelectPag extends StatefulWidget{
  const CenarioSelectPag ({super.key,});

  @override
  State<CenarioSelectPag> createState() => _CenarioSelectPag();
}

class _CenarioSelectPag extends State<CenarioSelectPag> {

  List<Cenario> cenarios = [
    Cenario(
      nome: 'Fujikawa', 
      img: [
        'img/carros/1/car01.jpeg'
      ], 
      nomeReal: 'Japão',
      desafios: [
        '1',
        '2'
      ]
    ),
    Cenario(
      nome: 'Guarapári', 
      img: [
        'img/carros/2/car01.jpeg'
      ], 
      nomeReal: 'Brasil',
      desafios: [
        '1',
        '2'
      ]
    ),
    Cenario(
      nome: 'Harimo', 
      img: [
        'img/carros/3/car01.jpeg'
      ], 
      nomeReal: 'Egito',
      desafios: [
        '1',
        '2'
      ]
    ),
    Cenario(
      nome: 'Melbourne', 
      img: [
        'img/carros/4/car01.jpeg'
      ], 
      nomeReal: 'Austrália',
      desafios: [
        '1',
        '2'
      ]
    ),
    Cenario(
      nome: 'Neo Londres', 
      img: [
        'img/carros/5/car01.jpeg'
      ], 
      nomeReal: 'Reino Unido',
      desafios: [
        '1',
        '2'
      ]
    ),
  ];

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
    body: Center(
      child: Container(
        decoration: const BoxDecoration(
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
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child:ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.vertical,
                    controller: _controller,
                    clipBehavior: Clip.antiAlias,
                    itemBuilder: (BuildContext ctx, index){
                      return Card( 
                        child: ListTile(
                          leading: CircleAvatar(backgroundImage: AssetImage(cenarios[index].img[0]),),
                          title: Text(cenarios[index].nome, style: const TextStyle(color: Color.fromARGB(255, 255, 187, 0)),),
                          subtitle: Text(cenarios[index].nomeReal.toString(), style: const TextStyle(color: Color.fromARGB(255, 163, 119, 23)),),
                          hoverColor: const Color.fromARGB(255, 15, 66, 107),
                          selectedTileColor: const Color.fromARGB(255, 53, 0, 102),
                          contentPadding: const EdgeInsets.all(5),
                          tileColor: const Color.fromARGB(255, 0, 20, 49),
                          onTap: () =>  Navigator.push(
                            context,
                            MaterialPageRoute(builder:
                              (context) => const CenarioPag(),
                              settings: RouteSettings(
                              arguments:cenarios[index],
                            ),),),
                        ),
                      );
                  },)
                )
              ]
            )
          )
      )
    ));
  }
}