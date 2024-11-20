import 'package:caoscruisermobile/classes/cenario.dart';
import 'package:flutter/material.dart';

class CenarioPag extends StatelessWidget{
  const CenarioPag ({super.key,});

  @override
  Widget build(BuildContext context){

    final cenario = ModalRoute.of(context)!.settings.arguments as Cenario;

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
            const Text(
              'Cenário',
              style: TextStyle(
                fontFamily: 'ABeeZee',
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Image.asset('img/cenario/scene_jp.png', width: 310, height: 200,),
            Text(cenario.desafios[0])
          ],
        ),
      ),)
      )
  );
}
}