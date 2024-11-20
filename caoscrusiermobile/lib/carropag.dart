import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/carro.dart';
//import 'package:caoscruisermobile/carselectpag.dart';

class CarroPag extends StatefulWidget{
  const CarroPag ({super.key,});

  @override
  State<CarroPag> createState() => _CarroPag();
}

class _CarroPag extends State<CarroPag> {

  int i = 0;
  int p = 1;
  

  avancar(){
    setState(() {
      i = i + 1;
    });
    if(i >= 5){
      i = 0;
    }
  }

  voltar(){
    setState(() {
      i = i - 1;
    });
    if(i <= -1){
      i = 4;
    }
  }

  @override
  Widget build(BuildContext context){

    final carro = ModalRoute.of(context)!.settings.arguments as Carro;

    if (carro.nomeCarro == 'Apophis') {
      p;
    }
    else if (carro.nomeCarro == 'Caçador'){
      p = 2;
    }
    else if (carro.nomeCarro == 'E.V.A.'){
      p = 3;
    }
    else if (carro.nomeCarro == 'Mercúrio'){
      p = 4;
    }
    else if (carro.nomeCarro == 'Raptor'){
      p = 5;
    }
    else if (carro.nomeCarro == 'Ultravioleta'){
      p = 6;
    }

    List<String> imagens = [
      'img/carros/$p/car01.jpeg',
      'img/carros/$p/car02.jpeg',
      'img/carros/$p/car03.jpeg',
      'img/carros/$p/car04.jpeg',
    ];
    
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
                Image.asset(imagens[i]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      voltar();
                    }, 
                      child: const Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 0, 20, 49)),
                    ),
                    ElevatedButton(
                      onPressed:(){
                        avancar();
                      },
                      child: const Icon(Icons.arrow_forward_ios, color: Color.fromARGB(255, 0, 20, 49))
                    ),
                    const Padding(padding: EdgeInsets.all(2),),
                  ],
                ),
                Text(carro.habilidade, style: const TextStyle(color: Colors.white),),
              ],
            ),
          ),
        )
      )
    )
  );
}
}