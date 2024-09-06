import 'package:flutter/material.dart';

class CenarioPag extends StatelessWidget{
  const CenarioPag ({super.key,});

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
            const Text(
              'Cenário',
              style: TextStyle(
                fontFamily: 'ABeeZee',
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Image.asset('img/cenario/scene_jp.png', width: 310, height: 200,),
          ],
        ),
      ),)
      )
  );
}
}