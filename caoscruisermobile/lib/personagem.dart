import 'package:flutter/material.dart';

class Personagem extends StatelessWidget{
  const Personagem ({super.key,});

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
          children: <Widget>[
             const Text(
              'Personagem',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Image.asset('img/carro_gt40.png', width: 310, height: 200,),
          ],
        ),
      ),))
  );
}
}