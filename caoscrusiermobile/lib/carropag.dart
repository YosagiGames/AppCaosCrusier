import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/carro.dart';
import 'package:caoscruisermobile/classes/piloto.dart';

class CarroPag extends StatefulWidget{
  const CarroPag ({super.key,});

  @override
  State<CarroPag> createState() => _CarroPag();
}

class _CarroPag extends State<CarroPag> {

  List<Piloto> pilotos = [
    Piloto(
      nomePiloto: 'Nome: Aten Tausert',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'Nacionalidade: ',
      historia: 'História: Aten foi nascido e criado no Cairo, e foi desde cedo apresentado à tecnologia de seu país por ser filho de um cientista famoso. Sua paixão pelas corridas nasceu após ele acompanhar seu irmão, que por sua vez era piloto de um trem bala que percorria todo o rio Nilo. Desde então, Aten decidiu dedicar sua vida às corridas, atrás daquele sentimento da alta velocidade que experienciou com seu irmão.',
      fim: 'Final: Ao ganhar o evento e o prêmio de desenvolvimento tecnológico, Aten usa do prêmio para o desenvolvimento de um novo sistema de velocidade para tornar o transporte de um ponto a outro cada vez mais curto.',
    ),
    Piloto(
      nomePiloto: 'Maria Gonzales',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'Nacionalidade: costarriquenha',
      historia: 'História: nasceu na cidade de Libéria, tendo vivido de seus 12 aos seus 22 no Brasil. Maria era filha de uma corredora de carros da Costa Rica e de um mergulhador brasileiro. Viveu no brasil durante sua adolescência, então sabe tanto espanhol quanto português brasileiro e é bem situada em ambas as culturas. Ela segue a carreira da mãe como corredora e atualmente está entre uma das melhores.',
      fim: 'Final: Ao ganhar o prêmio, Maria passa a desenvolver uma forma dos humanos passarem para outros planetas e assim começarem a expansão espacial dos humanos.',
    ),
    Piloto(
      nomePiloto: 'Ava Scott',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'Nacionalidade: neozelandesa',
      historia: 'História: nascida em Gisborne, Ava foi criada no porto e sempre teve paixão pelo oceano e pelas suas criaturas. Ela viajava no alto-mar com o pai e sempre apreciou essas viagens, se tornando uma motonauta na juventude. Seu talento no jet sky é tanto que mesmo em um carro ela se sobressai como pilota.',
      fim: 'Final: ao ganhar o evento, Ava desenvolve a exploração das partes mais profundas dos mares para preservação de suas espécies.',
    ),
    Piloto(
      nomePiloto: 'Yelena Papova',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'Nacionalidade: russa, porém mora/representa na Antártida.',
      historia: 'História: nascida em São Petersburgo, se tornou uma soldado do governo durante sua maioridade. Após um ferimento grave se aposentou do cargo, mas foi chamada para ser uma piloto em uma base de pesquisas no antarctica. Yelena aceita e vai viver no continente inóspito da Antártica. Suas habilidades se destacaram tanto que, mesmo sendo apenas um soldado em uma missão, foi convidada para o campeonato como representante da antarctica.',
      fim: 'Final: Ao ganhar o evento, ela ajuda nas pesquisas das calotas gélidas dos polos do mundo.',
    ),
    Piloto(
      nomePiloto: 'Petroski Kamiński',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'Nacionalidade: polonês.',
      historia: 'História: Petroski nasceu e cresceu na cidade de Breslávia, sendo desde sempre um prodígio nos esportes com seus rápidos raciocínio, reflexos e velocidade. Seus pais são professores em uma universidade, porém ele decidiu seguir uma carreira que exija mais de seus talentos.',
      fim: 'Final: ao ganhar, Petroski usa o prêmio para desenvolver pistas mais complexas com desafios mais difíceis.',
    ),
    Piloto(
      nomePiloto: 'Tashi Yadav',
      imgPiloto: 'imgPiloto',
      nacionalidade: 'Nacionalidade: nepalês.',
      historia: 'História: Tashi vive sua vida em Pokhara, vivendo de forma simples na agricultura. Ele entrou no mundo das corridas através de seu neto, mostrando seu talento e controle no volante enquanto aprendia a dirigir.',
      fim: 'Final: ao ganhar o prêmio, ele escolhe o desenvolvimento de formas de plantio mais eficientes e ampliação da natureza no mundo.',
    ),
  ];

  int i = 0;
  int p = 1;

  @override
  Widget build(BuildContext context){

    final carro = ModalRoute.of(context)!.settings.arguments as Carro;

    if (carro.nomeCarro == 'Apophis') {
      p;
      setState(() {
        i = 0;
      });
    }
    else if (carro.nomeCarro == 'Caçador'){
      p = 2;
      setState(() {
        i = 1;
      });
    }
    else if (carro.nomeCarro == 'E.V.A.'){
      p = 3;
      setState(() {
        i = 2;
      });
    }
    else if (carro.nomeCarro == 'Mercúrio'){
      p = 4;
      setState(() {
        i = 3;
      });
    }
    else if (carro.nomeCarro == 'Raptor'){
      p = 5;
      setState(() {
        i = 4;
      });
    }
    else if (carro.nomeCarro == 'Ultravioleta'){
      p = 6;
      setState(() {
        i = 5;
      });
    }
    
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
                colors: <Color>[
                Color.fromARGB(255, 26, 0, 39), 
                Color.fromARGB(255, 125, 0, 132),
                ]
              ),
            ),
          ), //cor de fundo da AppBar
          title: carro.construirTitleAppBar(title: carro.textosPag[0]),
          centerTitle: true,
          leading: pilotos[0].construirIconButton(
            icon: Icon(carro.icons[0]),
            onPressed: () =>  Navigator.pop(context),
          ),
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
            child: Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
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
                    carro.construirTitulo(title: carro.nomeCarro),
                    Padding(padding: EdgeInsets.all(10)),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 7),
                        autoPlayAnimationDuration: Duration(seconds: 3),
                        enlargeCenterPage: true,
                      ),
                      items: [
                        Image.asset(carro.img[0]),
                        Image.asset(carro.img[1]),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    carro.construirTitulo(title: carro.textosPag[1]),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      carro.habilidade,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      carro.origem,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(7)),
                    carro.construirTitulo(title: carro.textosPag[2]),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      pilotos[i].nomePiloto,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      pilotos[i].nacionalidade,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      pilotos[i].historia,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      pilotos[i].fim,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        )
      )
    );
  }
}