import 'package:flutter/material.dart';
import 'package:caoscruisermobile/personagem.dart';

/*class Personagem {
  final String nome;
  final String img;
  final String nomepiloto;
  final String habilidade;

  Personagem({
    required this.nome,
    required this.img,
    required this.nomepiloto,
    required this.habilidade
  });

  void avancar(){
    //metodo vazio por enquanto
  }

  void voltar(){
    //método vazio por enquanto
  }

  void mudarAuto(){
    //método vazio por enquanto
  }
}*/

class PersonagemPag extends StatefulWidget{
  const PersonagemPag ({super.key,});

  @override
  State<PersonagemPag> createState() => _PersonagemPag();
}



class _PersonagemPag extends State<PersonagemPag> {
  Personagem apophis = Personagem('Apophis', 'img/carro_apophis.png', 'nomepiloto', 'habilidade');
  List<Personagem> personagens = [];
  int pt = 0;

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
             ElevatedButton(
              onPressed:(){
                
              },
              child: const Text('Avançar imagem')),
          ],
        ),
      ),))
  );
}
}