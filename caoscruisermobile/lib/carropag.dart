import 'package:flutter/material.dart';
import 'package:caoscruisermobile/carro.dart';

class CarroPag extends StatefulWidget{
  const CarroPag ({super.key,});

  @override
  State<CarroPag> createState() => _CarroPag();
}

class _CarroPag extends State<CarroPag> {

  int index = 0;
  int pasta = 0;
  int i = 0;

  avancar(){
    setState(() {
      i = i + 1;
    });
    if(i >= 6){
      i = 0;
    }
  }

  voltar(){
    setState(() {
      i = i - 1;
    });
    if(i <= -1){
      i = 5;
    }
  }

  @override
  Widget build(BuildContext context){

    List<String> imagens = [
      'img/carros/$pasta/$index.png'
    ];

    List<Carro> carros = [
      Carro('Apophis', 'img', 'nome', 'aaa'),
    ];

  pasta = index;

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
            Text(imagens[index], style: const TextStyle(color: Colors.white),),
            Image.asset(imagens[index]),
            Text(imagens[index], style: const TextStyle(color: Colors.white),),
            Text(imagens[index], style: const TextStyle(color: Colors.white),),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    voltar();
                  }, 
                  child: const Icon(Icons.arrow_back_ios),),
                  ElevatedButton(
                    onPressed:(){
                      avancar();
                    },
                    child: const Icon(Icons.arrow_forward_ios,
                      /*style: TextStyle(color: Color.fromARGB(255, 150, 0, 0)),*/)
                  ),
                  const Padding(padding: EdgeInsets.all(2),),
                ],
              ),
          ],
          ),
        ),
      )
    )
  );
}
}