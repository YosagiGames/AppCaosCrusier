import 'package:flutter/material.dart';
import 'package:caoscruisermobile/jogo.dart';

class InspoPag extends StatefulWidget {
  const InspoPag({super.key,});

  @override
  State<InspoPag> createState() => _InspoPag();
}

class _InspoPag extends State<InspoPag> {
  @override
  Widget build(BuildContext context){
    final caosCrusier = ModalRoute.of(context)!.settings.arguments as Jogo;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromARGB(255, 26, 0, 39), 
                  Color.fromARGB(255, 125, 0, 132)
                ]
              ),
            ),
          ), // cor de fundo da AppBar
          leading: IconButton(icon: const Icon(Icons.arrow_back_ios,), color: const Color.fromARGB(255, 255, 187, 0), onPressed: () => Navigator.pop,),
          title: construirTitulo(title: caosCrusier.textosPag[5]),
          centerTitle: true,
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
                SizedBox(
                  height: 60,
                  child: Text(caosCrusier.textosPag[5]),
                ),
                Image.asset('name')
              ],
            )
          )
        )
      )
    ))
    );
  }

  Widget construirTitulo({
    required String title
  }){
    return Text(
      title, 
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 187, 0)
      ),
    );
  }
}