import 'package:caoscruisermobile/historiapag.dart';
import 'package:caoscruisermobile/car_e_cenpag.dart';
import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/jogo.dart';

class GamePag extends StatelessWidget{
  const GamePag ({super.key,});

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
          leading: caosCrusier.construirIconButton(
            icon: Icon(caosCrusier.icons[5]),
            onPressed: () => Navigator.pop(context),
          ),
          title: caosCrusier.construirTitleAppBar(title: caosCrusier.textosPag[0]),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 64, 4, 89),
                  Color.fromARGB(255, 14, 1, 55),
                ],
              )
            ),
            child: Center(
              child: Container (
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 88, 0, 123),
                      Color.fromARGB(255, 57, 0, 71),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      caosCrusier.construirTitulo(title: caosCrusier.textosPag[3]),
                      Padding(padding: EdgeInsets.all(6)),
                      Image.asset(caosCrusier.imgs[0]),
                      Padding(padding: EdgeInsets.all(4)),
                      Text(
                        caosCrusier.caracteristicas,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CarCenPag(),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 187, 0))
                        ),
                        child: Text(
                          caosCrusier.textosPag[9],
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'ABeeZee',
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HistoriaPag(),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 187, 0))
                        ),
                        child: Text(
                          caosCrusier.textosPag[7],
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'ABeeZee',
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(7)),
                      caosCrusier.construirTitulo(title: caosCrusier.textosPag[4]),
                      Padding(padding: EdgeInsets.all(6)),
                      Image.asset(caosCrusier.imgs[1]),
                      Padding(padding: EdgeInsets.all(4)),
                      Text(
                        caosCrusier.objetivo,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(7)),
                      caosCrusier.construirTitulo(title: caosCrusier.textosPag[5]),
                      Padding(padding: EdgeInsets.all(6)),
                      Image.asset(caosCrusier.imgs[2]),
                      Padding(padding: EdgeInsets.all(4)),
                      Text(
                        caosCrusier.tematica,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(7)),
                      caosCrusier.construirTitulo(title: caosCrusier.textosPag[6]),
                      Padding(padding: EdgeInsets.all(6)),
                      Image.asset(caosCrusier.imgs[3]),
                      Padding(padding: EdgeInsets.all(4)),
                      Text(
                        caosCrusier.motivoJogo,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(7)),
                      caosCrusier.construirTitulo(title: caosCrusier.textosPag[10]),
                      Padding(padding: EdgeInsets.all(6)),
                      Image.asset(caosCrusier.imgs[4]),
                      Padding(padding: EdgeInsets.all(4)),
                      Text(
                        caosCrusier.controles[0],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        caosCrusier.controles[1],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        caosCrusier.controles[2],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        caosCrusier.controles[3],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        caosCrusier.controles[4],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        caosCrusier.controles[5],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ABeeZee',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ),
          )
        )
      )
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