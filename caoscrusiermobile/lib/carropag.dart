import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/carro.dart';
import 'package:caoscruisermobile/classes/piloto.dart';

class CarroPag extends StatefulWidget{
  const CarroPag ({super.key,});

  @override
  State<CarroPag> createState() => _CarroPag();
}

class _CarroPag extends State<CarroPag> {

  List<Piloto> pilotos = [
    Piloto(
      nomePiloto: 'Piloto Apophis',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'a',
      historia: 'pipipi',
      fim: 'popopo',
    ),
    Piloto(
      nomePiloto: 'Piloto Caçador',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'b',
      historia: 'pipipi',
      fim: 'popopo',
    ),
    Piloto(
      nomePiloto: 'Piloto E.V.A.',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'c',
      historia: 'pipipi',
      fim: 'popopo',
    ),
    Piloto(
      nomePiloto: 'Piloto Mercúrio',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'd',
      historia: 'pipipi',
      fim: 'popopo',
    ),
    Piloto(
      nomePiloto: 'Piloto Raptor',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'e',
      historia: 'pipipi',
      fim: 'popopo',
    ),
    Piloto(
      nomePiloto: 'Piloto Ultravioleta',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'f',
      historia: 'pipipi',
      fim: 'popopo',
    ),
  ];

  int i = 0;
  int p = 1;

  @override
  Widget build(BuildContext context){

    final carro = ModalRoute.of(context)!.settings.arguments as Carro;

    if (carro.nomeCarro == 'Apophis') {
      p;
      setState(() {
        i = 0;
      });
    }
    else if (carro.nomeCarro == 'Caçador'){
      p = 2;
      setState(() {
        i = 1;
      });
    }
    else if (carro.nomeCarro == 'E.V.A.'){
      p = 3;
      setState(() {
        i = 2;
      });
    }
    else if (carro.nomeCarro == 'Mercúrio'){
      p = 4;
      setState(() {
        i = 3;
      });
    }
    else if (carro.nomeCarro == 'Raptor'){
      p = 5;
      setState(() {
        i = 4;
      });
    }
    else if (carro.nomeCarro == 'Ultravioleta'){
      p = 6;
      setState(() {
        i = 5;
      });
    }
    
    return Scaffold(
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
        leading: IconButton(onPressed: (){
          Navigator.pop(context);},
          icon: const Icon(Icons.arrow_back_rounded, color: Color.fromARGB(255, 255, 187, 0),)),
      ),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(carro.nomeCarro, style: const TextStyle(color: Colors.white),),
                Image.asset(carro.img[0]),
                Text(carro.habilidade, style: const TextStyle(color: Colors.white),),
                Text(pilotos[i].nomePiloto),
              ],
            ),
          ),
        )
      )
    )
  );
}
}