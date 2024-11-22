import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/historia.dart';

class HistoriaPag extends StatelessWidget{
  HistoriaPag ({super.key,});

  final Historia hist = Historia(
    textosPag: [
      'História de Caos Crusier',
      'Origem da corrida',
      'História geral',
      'História da corrida'
    ],
    imgs: [
      'img/jogo/MapaMundi.png'
    ],
    origemCorrida: 'origemCorrida',
    histGeral: 'O movimento das placas tectônicas acabou por criar um novo continente, posteriormente nomeado como Annes. Nestas novas terras, foi descoberto um novo tipo de combustível, um que é mais limpo que os combustíveis fósseis da época e mais potente que outras fontes. Rapidamente, diversas potências mundiais se mobilizaram para explorar o novo continente com o objetivo de se aproveitar do recurso inédito da região. Anos passam e o governo desiste de tentar usufruir de forma única o combustível por fortes influência ativistas contra a exploração do material. Muitos acabaram por se mudar para Annes nesse processo e eventualmente foi decidido que usariam o combustível como uma forma de união das nações. Ao passar dos anos os países se desenvolveram mais e mais, cada um avançando de forma individual e independente, tornando a tecnologia de cada país única. A revolução tecnológica estava acontecendo em todo o globo novamente, mas não apenas uma, mas sim diversas evoluções aconteceram ao mesmo tempo seguindo vertentes diferentes.',
    histCorrida: 'As corridas funcionam como uma corrida de equipes, onde não se tem uma linha de chegada. 6 carros especiais, disputam com algumas dezenas de carros, o carro que ultrapassar mais carros até o fim do dia é considerado o vencedor da corrida. Estes carros especiais são pilotados pelos melhores corredores de cada continente, com cada um possuindo uma habilidade única para se destacar dos demais corredores. Além destes carros, pela grande evolução da tecnologia, a viagem internacional ficou mais simples do que nunca, então os corredores irão experienciar diferentes pistas em diferentes países.',
    icons: [
      Icons.arrow_back_ios,
    ],
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
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
          leading: hist.construirIconButton(
            icon: Icon(hist.icons[0]),
            onPressed: () => Navigator.pop(context),
          ),
          title: hist.construirTitleAppBar(title: hist.textosPag[0].toUpperCase()),
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
                  //hist.construirTitulo(title: hist.textosPag[1]),
                  Image.asset(hist.imgs[0]),
                  /*Text(
                    hist.origemCorrida,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ABeeZee',
                      fontSize: 15,
                    ),
                  ),*/
                  Padding(padding: EdgeInsets.all(3)),
                  hist.construirTitulo(title: hist.textosPag[2]),
                  Text(
                    hist.histGeral,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ABeeZee',
                      fontSize: 15,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  hist.construirTitulo(title: hist.textosPag[3]),
                  Text(
                    hist.histCorrida,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ABeeZee',
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            )
          )
        )
      )
    )
    );
  }
}