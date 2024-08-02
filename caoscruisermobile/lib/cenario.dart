import 'package:flutter/material.dart';

class Cenario extends StatelessWidget{
  const Cenario ({super.key,});

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
        child: Column(
          children: <Widget>[
            const Text(
              'Cenário',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Image.asset('img/scene_jp.png', width: 310, height: 200,),
          ],
        ),
      ),)
  );
}
}