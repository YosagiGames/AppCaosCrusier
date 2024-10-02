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
    Carro('Apophis', 'img/carros/apophis.jpeg', 'piloto', 'habilidade'),
    Carro('Caçador', 'img/carros/cacador.jpeg', 'piloto', 'habilidade'),
    Carro('E.V.A.', 'img/carros/eva.jpeg', 'piloto', 'habilidade'),
    Carro('Mercúrio', 'img/carros/mercurio.jpeg', 'piloto', 'habilidade'),
    Carro('Raptor', 'img/carros/raptor.jpeg', 'piloto', 'habilidade'),
    Carro('Ultravioleta', 'img/carros/ultravioleta.jpeg', 'piloto', 'habilidade'),
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
                Color.fromARGB(255, 26, 26, 26),
                Color.fromARGB(193, 81, 81, 81),
              ],
            )
          ),
          child: Center(
            child: Column(
              children: [
              Expanded(
                child:ListView.builder(
                  itemCount: carros.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(5),
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  clipBehavior: Clip.antiAlias,
                  itemBuilder: (BuildContext ctx, index){
                    return Card( 
                      child: ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage(carros[index].img),),
                        title: Text(carros[index].nome),
                        subtitle: Text(carros[index].nomepiloto.toString()),
                        onTap: () =>  Navigator.push(
                          context,
                          MaterialPageRoute(builder:
                            (context) => const CarroPag(),
                            settings: RouteSettings(
                            arguments:carros[index],
                          ),),),
                      ),
                    );
                  },))
              ]
            )
          )
      )
    ));
  }
}