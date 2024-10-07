import 'package:flutter/material.dart';
import 'package:caoscruisermobile/carro.dart';
import 'package:caoscruisermobile/carropag.dart';

class CarSelectPag extends StatefulWidget{
  const CarSelectPag ({super.key,});

  @override
  State<CarSelectPag> createState() => _CarSelectPag();
}

class _CarSelectPag extends State<CarSelectPag> {

  List<Carro> carros = [
    Carro('Apophis', 'img/carros/1/car01.jpeg', 'piloto', 'habilidade'),
    Carro('Caçador', 'img/carros/2/car01.jpeg', 'piloto', 'habilidade'),
    Carro('E.V.A.', 'img/carros/3/car01.jpeg', 'piloto', 'habilidade'),
    Carro('Mercúrio', 'img/carros/4/car01.jpeg', 'piloto', 'habilidade'),
    Carro('Raptor', 'img/carros/5/car01.jpeg', 'piloto', 'habilidade'),
    Carro('Ultravioleta', 'img/carros/6/car01.jpeg', 'piloto', 'habilidade'),
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
                    itemCount: 6,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.vertical,
                    controller: _controller,
                    clipBehavior: Clip.antiAlias,
                    itemBuilder: (BuildContext ctx, index){
                      return Card( 
                        child: ListTile(
                          leading: CircleAvatar(backgroundImage: AssetImage(carros[index].img),),
                          title: Text(carros[index].nome, style: const TextStyle(color: Color.fromARGB(255, 255, 187, 0)),),
                          subtitle: Text(carros[index].nomepiloto.toString(), style: const TextStyle(color: Color.fromARGB(255, 163, 119, 23)),),
                          hoverColor: const Color.fromARGB(255, 15, 66, 107),
                          selectedTileColor: const Color.fromARGB(255, 53, 0, 102),
                          contentPadding: const EdgeInsets.all(5),
                          tileColor: const Color.fromARGB(255, 0, 20, 49),
                          onTap: () =>  Navigator.push(
                            context,
                            MaterialPageRoute(builder:
                              (context) => const CarroPag(),
                              settings: RouteSettings(
                              arguments:carros[index],
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