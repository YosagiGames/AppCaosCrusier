import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:caoscruisermobile/classes/carro.dart';
import 'package:caoscruisermobile/classes/cenario.dart';
import 'package:caoscruisermobile/carropag.dart';
import 'package:caoscruisermobile/cenariopag.dart';

class CarCenPag extends StatefulWidget{
  const CarCenPag ({super.key,});

  @override
  State<CarCenPag> createState() => _CarCenPag();
}

class _CarCenPag extends State<CarCenPag> {

  List<Carro> carros = [
    Carro(
      textosPag: [
        'CARROS',
        'Informações do carro',
        'Informações do piloto',
        'CARROS E CENÁRIOS'
      ],
      nomeCarro: 'Apophis',
      img: [
        'img/carros/1/car01.jpeg',
        'img/carros/1/Apo.png',
      ],
      habilidade: 'Habilidade: Presas da Naja - ao bater em um carro à sua frente, o Apophis pode jogá-lo para trás enquanto ganha um aumento de velocidade temporário.',
      origem: 'Sua História está envolta pelo orgulho egipcio, é o carro apreciado pelo povo Harimo. O país sempre foi líder nas competições automobilísticas, utilizando a tecnologia de despressurização, o carro foi resgatado de sua cultura e remodelado para incorporar ao ambiente. Sua habilidade se resume a rampar os adversários em sua frente e irá jogá-lo para trás com sua rampa, e ganhar um aumento de velocidade, baseado no carro ao qual ele atingiu.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
        'Informações do carro',
        'Informações do piloto',
      ],
      nomeCarro: 'Caçador', 
      img: [
        'img/carros/2/car01.jpeg',
        'img/carros/2/Caca.png',
      ],
      habilidade: 'Habilidade: Caça Intensa - após ficar entre 1 (tempo mínimo) e 10 segundos (tempo máximo), no vácuo de um adversário irá ganhar um aumento de velocidade por um tempo compatível pelo qual conseguiu se manter atrás do adversário.',
      origem: 'A partir de um experimento no intuito de revolucionar a engenharia e mecânica brasileira, o Doutor Nildo Alvejante e o mecânico Alano Domingues, planejavam criar uma máquina mortífera mas falharam, sem desistir, eles foram constantemente adaptando o carro após o anúncio da corrida Caos Crusier. Inspirado em uma marca italiana foi realizado uma fusão, juntamente, com lobos da região, conhecidos por serem os mais rápidos de lá. Sua habilidade, de modo simples, é representada pelo vácuo. Após permanecer no vácuo de outro carro, ele ficará ainda mais rápido, permanecendo veloz pela quantidade de segundos que ele se manteve preso ao vácuo anteriormente.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
        'Informações do carro',
        'Informações do piloto',
      ],
      nomeCarro: 'E.V.A. (Exaustor de Vapor Ativo)',
      img: [
        'img/carros/3/car01.jpeg',
        'img/carros/3/Eva.png',
      ],
      habilidade: 'Habilidade: Turbo Vapor - ao apertar a tecla "E", o E.V.A. ganha um impulso de velocidade por até 5 segundos.',
      origem: 'E.V.A., um dos carros mais luxuosos de nossa coleção. Com a equipe comandada por Platun Ribeiro e Louiz Solcrâtes, criaram a obra prima da nação australiana. Inspirado nas carroceria americana vencedora na antiga maior competição de corrida de longas durações, atribuíram uma nova tecnologia híbrida a este carro. Sua alta tecnologia preserva o vapor desperdiçado pelo carro e o utiliza como turbo, concentrando-o nesse aspecto.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
        'Informações do carro',
        'Informações do piloto',
      ],
      nomeCarro: 'Mercúrio',
      img: [
        'img/carros/4/car01.jpeg',
        'img/carros/4/Merc.png',
      ],
      habilidade: 'Habilidade: Velocidade da Luz - é característico dele ser mais veloz, no entanto, ele é bem instável.',
      origem: 'Seu design foi elaborado por Titi Carva, e criado pelo povo de Annes. O Mercúrio, é mais do que um carro de corrida: é uma declaração de força e inovação. Projetado para mostrar que seu povo não é inofensivo, o veículo é abastecido e revestido por uma matéria-prima rara e única, encontrada ao redor do globo. Essa combinação o torna incrivelmente veloz e resistente, capaz de competir de igual para igual com qualquer adversário.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
        'Informações do carro',
        'Informações do piloto',
      ],
      nomeCarro: 'Raptor',
      img: [
        'img/carros/5/car01.jpeg',
        'img/carros/5/Rapt.png',
      ],
      habilidade: 'Habilidade: Escama de Aço - ao bater em  outro veículo, Raptor ganha impulso e arremessa seu adversário para longe, no entanto, a cada batida, ele perde um pouco de vida.',
      origem: 'Raptor, o terror britânico. Seguia sendo desenvolvido de maneira secreta em uma das bases remotas da grande britânica, entre guerras, um  ataque surpresa foi direcionado ao país, e o carro caiu em uma vala de diesel radioativo de urânio enriquecido. O baque da decepção acertou a todos os envolvidos na criação, cientistas e engenheiros pensaram ter perdido uma peça de ouro. Porém, em meio aos resquícios e sobras das guerras, à procura de recursos, eles encontraram a máquina… Mas estava diferente, a aparência de dinossauro contaminava o veículo, repleto de escamas, dentes grandes e até uma cauda. Com testes, eles perceberam que o carro tinha quase vida própria,  além da resistência e agir de maneira agressiva, sendo um ótimo competidor. Sua habilidade gira em torno de executar sua habilidade indo em direção a batida do mesmo em outro carro, ao qual, ficará mais rápido de maneira imediata, logo após perdendo o controle de sua direção, assim, arremessando seu adversário para longe. Vale lembrar que, para cada batida, ele perderá uma porcentagem de seus pontos de vida.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Carro(
      textosPag: [
        'CARROS',
        'Informações do carro',
        'Informações do piloto',
      ],
      nomeCarro: 'Ultravioleta',
      img: [
        'img/carros/6/car01.jpeg',
        'img/carros/6/ultra.png',
      ],
      habilidade: 'Habilidade: Flutuação - ele é naturalmente um carro estável, apesar de flutuar, mas sua velocidade é mais lenta.',
      origem: 'Ultravioleta é uma supermáquina que combina a tecnologia de ponta japonesa com um design neojaponês inspirado em antigas máquinas de corrida alemãs. Desenvolvido por um projeto governamental para demonstrar a autoridade e o avanço do Japão, o veículo utiliza flutuadores para enfrentar terrenos variados e é otimizado tanto para curvas rápidas quanto para áreas que exigem direção cautelosa. Criado pelos mecânicos Welli Ichi e Will Anata, ele é movido por um combustível inovador extraído da matéria-prima Fujiana e equipado com aerodinâmica ativa, simbolizando o futuro da competição.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
  ];

  List<Cenario> cenarios = [
    Cenario(
      textosPag: [
        'CENÁRIOS',
        'Informações gerais',
        'Desafios',
      ],
      nome: 'Fujikawa',
      nomeOg: 'Nome original: Japão',
      img: [
        'img/cenarios/1/fujikawa1.jpg',
        'img/cenarios/1/fujikawa2.jpg',
        'img/cenarios/1/fujikawa3.jpg',
        'img/cenarios/1/japao feudal.jpeg',
        'img/cenarios/1/japao neon.jpeg',
      ],
      desc: 'A primeira fase apresentada no Japão possui a estética Nanopunk, afinal, sendo conhecida por suas ruas movimentadas,  placas luminosas e decorações deslumbrantes. Consequentemente, as outras fases se passam no interior do Japão, com os monumentos clássicos do período imperial japonês e com diversos comércios espalhados. Ao decorrer, a fase na grande Tóquio traz uma sensação de velocidade e adrenalina para o jogador, as outras fases vão trazer tranquilidade e conforto, transmitindo ambos sentimentos e contrastes. A primeira fase apresenta construções grandes, luminosas e intensas. A seguir, o segundo mapa apresenta as construções feudais e comércios, as iluminações estão presentes nos postes nas ruas e luzes nas construções, ambientando uma pequena vila japonesa.  E ao fim, grandes árvores de sakuras, o monte Fuji e grandes portais acompanham o jogador a largada novamente, obtendo visão as águas cristalinas do terreno é notório a extração de matéria-prima para o país as vistas do monte Fuji. A atmosfera trás aos pilotos uma viagem mágica e lúdica, com diferentes tipos de terrenos, dificuldades e paisagens, um verdadeiro mergulho na cultura e construções do país.',
      estetica: 'Estética: nanopunk/cyberpunk.',
      desafios: 'A fase do Japão é majoritariamente prejudicial ao controle do jogador. Em uma parte, o jogador estará em um terreno que desliza mais que o comum e após isso, será sujeito a um trajeto de terra que dificulta o controle do carro, semelhante a areia do Egito.',
      historia: 'O Japão que já havia sofrido muitas vezes por terremotos, desta vez foi mais grave e nocivo, com tsunamis sem intervalos que ao decorrer do tempo inundaram as cidades e levaram grande parte da população Japonesa a fugirem para áreas mais elevadas do arquipélago japonês. Durante esta migração a sociedade foi se desenvolvendo de diversas formas tecnológicas e estruturas para construções, extraindo boa parte da matéria-prima do Monte Fuji. Ao longo do tempo construíram sua nova população se dividindo em áreas mais desenvolvidas, sábias e movimentadas com uma capital vibrante, expandindo para mais regiões e restabelecendo a cultura oriental do interior, por fim, construíram territórios ambientais porém com a extração da matéria-prima local. As estiagens locais fazem com que o nível da água não diminua, mantendo a nova sociedade ancorada em apenas um país.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Cenario(
      textosPag: [
        'CENÁRIOS',
        'Informações gerais',
        'Desafios',
      ],
      nome: 'Guarapári',
      nomeOg: 'Nome original: Brasil',
      img: [
        'img/cenarios/2/guarapari1.png',
        'img/cenarios/2/guarapari2.jpg',
        'img/cenarios/2/guarapari3.png',
        'img/cenarios/2/BrasilSp.jpeg',
        'img/cenarios/2/BrasilCapsula.jpeg',
      ],
      desc: 'A fase que se passa no Brasil possui uma estética ambiental e Biopunk, exibindo cenários com árvores e animais, dando ênfase na diversidade da fauna e da flora brasileira em uma realidade destruída, que vaga entre as fases com diversos ambientes. Conforme o jogador passa pelos cenários, a cidade se mostra praticamente tomada pela floresta, passando um sentimento de solidão e a perda de toda a consciência. Na primeira fase apresentada, cores neutras são utilizadas, o esquecimento da população e espaços habitáveis em todos os edifícios, exibindo ligeiramente o abandono. Na segunda fase apresentada, o teor de descaso se dissipa levemente, retratando as ruas, bondinhos e o monumento Cristo Redentor do estado do Rio de Janeiro, com construções vívidas. Por fim, a última fase apresentada retrata fielmente as matas fechadas, o isolamento das construções urbanas e o aparecimento de ocas indígenas que trazem traços tecnológicos, como principal, a cápsula com sua forma única e um líquido verde que o preenche. Assim como todos os cenários, uma parte de sua iluminação está presente ao céu, e também respectivamente na fase, propriedades, cápsula, e posteriormente iluminações entre as árvores e toda mata verde. A atmosfera primeiramente retrata ao abandono da população que fugiu para ambientes de melhor reprodução, abrindo espaço para a dominação da fauna, mas um pequeno avanço singelo pelo povo que ainda reside na região, durante todo o percurso as fumaças, clarões e terrenos peculiares se tornam presentes, construindo um ambiente difícil e competitivo de se manter, instigando a imaginação.',
      estetica: 'Estética: biopunk.',
      desafios: 'A fase do Brasil é uma junção das mecânicas anteriores em uma só fase. Unindo fumaça, clarão e terrenos prejudiciais ao jogador. Tornando o percurso mais difícil, com curvas acentuadas e as dificuldades implementadas na cena.',
      historia: 'Com todo caos acontecendo pelo mundo o Brasil foi ao máximo se mantendo estável economicamente e socialmente, porém  as condições de vida foram ficando difíceis com toda crise pelo globo, além de que monstros inofensivos porém grandes foram aparecendo pelo país em busca de um novo habitat. Ao meio de tudo isso o Brasil foi evoluindo tecnologicamente para conviver entre o meio ambiente e esses monstros tentando manter sua cultura e tradições pelos locais, assim eles se adaptaram de uma forma biológica incrível a este meio, se tornando um grande exemplo entre as outras nações no planeta. Com isso, nasceu Guarapári, a nova capital brasileira que juntou muitas das características de diversas capitais pelo Brasil juntando-se com a natureza, além de se manter junto dos monstros.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Cenario(
      textosPag: [
        'CENÁRIOS',
        'Informações gerais',
        'Desafios',
      ],
      nome: 'Harimo',
      nomeOg: 'Nome original: Egito',
      img: [
        'img/cenarios/3/harimo1.jpg',
        'img/cenarios/3/harimo2.jpg',
        'img/cenarios/3/Pira.png',
        'img/cenarios/3/DentPira.png',
        'img/cenarios/3/DentPiraCima.png',
      ],
      desc: 'A fase que se passa no Egito possui uma estética Greenpunk com um aspecto futurista e desértico. Os cenários exibem o retrato do país, a pirâmide, demonstra a desigualdade social, onde no topo reside a classe mais rica da sociedade, identificada por elementos que representam riqueza e prosperidade, como prédios altos, pontes e aviões, indicando um ambiente mais desenvolvido e de luxo. Na base está a população marginalizada, destacando uma densidade habitacional maior, com muitas casas amontoadas, pobreza e problemas como falta de saneamento básico. A crítica social é intencional, proporcionando a reflexão sobre a atual realidade retratada em todo o mundo, sugerindo que a riqueza da parte superior se apoia na existência de uma base social mais ampla e menos privilegiada, indicando contraste entre as duas realidades. Sua iluminação está presente na área externa e interna do ambiente, entre o céu adicionado na cena e também a fonte de luz artificial que ilumina toda a cidade no interior da pirâmide, gerando clarões que ofuscam a visão dos competidores, se tornando um fator dificuldade, e por fim, sua pista, que se destaca entre os demais ambientes, sendo uma fase especialmente única.',
      estetica: 'Estética: greenpunk e hightech.',
      desafios: 'A fase é dividida em lado interno e externo. Do lado externo, o jogador estará constantemente em uma pista de areia, o que dificulta o controle do carro. Internamente, em uma frequência variada, o sol dentro da pirâmide vai gerar clarões que ofusca a visão do jogador.',
      historia: 'O Egito foi muito afetado pelo movimento das placas tectônicas, principalmente por suas mudanças climáticas geradas. Sobre razão desse acontecimento, houveram diversos aumentos na temperatura mantendo o lugar inóspito, porém a população planejando manter a cultura e o local, construíram uma grande pirâmide tecnológica onde iriam criar toda a sua futura sociedade. A sensação climática continua alta até os dias atuais mantendo os cidadãos presos nesse ambiente por gerações, dessa forma, criaram uma fonte de luz artificial para se manterem vivos. Conseguinte a sociedade acabou se separando e criando uma desigualdade e crise social a qual os ricos mesmo em minoria possuem as melhores regiões da cidade, e a maioria habitantes marginalizados e desvalorizados pela população de Harimo, sendo para os moradores mais pobres, a corrida é uma esperança de liberdade e de luta contra a alta classe.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Cenario(
      textosPag: [
        'CENÁRIOS',
        'Informações gerais',
        'Desafios',
      ],
      nome: 'Melbourne',
      nomeOg: 'Nome original: Austrália',
      img: [
        'img/cenarios/4/melbourne1.jpg',
        'img/cenarios/4/melbourne2.jpg',
        'img/cenarios/4/melbourne3.jpg',
        'img/cenarios/4/fabricas.jpeg',
        'img/cenarios/4/ponte.jpeg',
      ],
      desc: 'A fase que se passa na Austrália tem a estética Steampunk, contendo máquinas que remetem ao vapor, à ancianidade, à fortuna e à era vitoriana, tendo destaque no maquinário e motores movidos a vapor. Sua ambientação é simples, passando pelos cenários de grandes construções e maquinários, e dirigíveis. Também é possível aproveitar a sensação próximo as águas do país, ao horizonte, retratam o Opera House. Suas iluminações se apresentam no céu adicionado na cena, mas também as construções com janelas, detalhes e texturas. A atmosfera é criada para a imersão, névoas de vapores para a dificuldade dos pilotos, possuindo assim, detalhes nos mapas que possam se tornar um ponto cego e curvas fechadas para os competidores.',
      estetica: 'Estética: steampunk.',
      desafios: 'A fase compartilha da característica de delimitar a área de visão do jogador, semelhante ao Reino Unido, porém, utilizando vapor no lugar da fumaça. O mapa também é construído de uma forma em que a visão do jogador seja prejudicada pelo mapa em certos segmentos da fase, com curvas fechadas e pontos cegos durante o trajeto.',
      historia: 'Ao meio dos terremotos a nação australiana se via em um desespero eterno, pois quanto mais tempo passava mais eles iam se distanciando do mundo e com isso perdendo o acesso à tecnologia externa, ao decorrer dos anos, com diversas tentativas fracassadas de se encaixar a um tipo de revolução tecnológica sempre falhando pela falta de recurso, até que um grande terremoto atingiu o país e acabou abrindo uma cratera gigantesca cheia de riquezas, aproveitando isso eles extraíram tudo o que podiam e adotaram a tecnologia a vapor por conta de seu custo e seu estilo luxuoso para o momento de decaimento da sociedade. Com isso eles usam desta grande matéria-prima para seus maquinários, fábricas e muitos outros produtos ao mundo, mesmo sendo o país mais isolado desta nova era.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
    Cenario(
      textosPag: [
        'CENÁRIOS',
        'Informações gerais',
        'Desafios',
      ],
      nome: 'Neo Londres',
      nomeOg: 'Nome original: Reino Unido',
      img: [
        'img/cenarios/5/neolondres1.jpg',
        'img/cenarios/5/neolondres2.jpg',
        'img/cenarios/5/neolondres3.jpg',
        'img/cenarios/5/ponte_e_predios.jpeg',
        'img/cenarios/5/perspectiva.jpg',
      ],
      desc: 'A fase do Reino Unido transmite a estética Dieselpunk, se baseando bastante no período entre as grandes guerras do mundo. Portanto, o jogador percorrendo pela icônica Tower Brigde e águas cristalinas, os levam para grandes galpões militares destruindo um cenário caótico entre explosões e fumaças. A iluminação está presente em construções repletas de detalhes, janelas, texturas e o céu adicionado para a cena 3D tornando o ambiente mais imersivo juntamente com as animações, abrindo possibilidades para um tom sombrio com suas névoas de fumaça e ventos fortes desestabilizantes.',
      estetica: 'Estética: dieselpunk.',
      desafios: 'Ocasionalmente, uma nuvem de fumaça irá aparecer para limitar o campo de visão do jogador. Além disso, ventos podem soprar para estabilizar o controle do jogador sobre o jogo.',
      historia: 'O Reino Unido após os terremotos gerados pelos movimentos das placas tectônicas, estava em estado deplorável mas com o tempo e com a ajuda do combustível encontrado em Annes eles foram se reerguendo, porém com as guerras que se desencadearam por conta da matéria-prima eles regrediram e se concentrando na produção e uso do diesel como seu principal meio de tecnologia e cultura, gerando uma nova era da revolução industrial no país e uma corrida do petróleo com objetivo de ser o principal condutor da revolução. Antes e durante os eventos da corrida eles continuam sofrendo ataques de outras nações com o objetivo de destruir o grande império Britânico, contudo decidiram continuar os eventos da corrida para mostrar sua força.',
      icons: [
        Icons.arrow_back_ios,
      ],
    ),
  ];

  //final ScrollController _controller = ScrollController();
  int index = 0;

  navegacaoCarro(){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => const CarroPag(),
        settings: RouteSettings(
          arguments: carros[index],
        ),
      ),
    );
  }

  navegacaoCenario(){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => const CenarioPag(),
        settings: RouteSettings(
          arguments: cenarios[index]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
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
          leading: cenarios[0].construirIconButton(
            icon: Icon(cenarios[0].icons[0]),
            onPressed: () => Navigator.pop(context),
          ),
          title: carros[0].construirTitleAppBar(title: carros[0].textosPag[3]),
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
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
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
                        child: Column(
                          children: [
                            carros[0].construirTitulo(title: carros[0].textosPag[0]),
                            CarouselSlider(
                              options: CarouselOptions(
                                enlargeCenterPage: true,
                                onPageChanged: (currentIndex, reason) {
                                  setState(() {
                                    index = currentIndex;
                                  });
                                },
                              ),
                              items: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromARGB(255, 0, 20, 49), 
                                  ),
                                  padding: const EdgeInsets.all(20.0),
                                  margin: const EdgeInsets.all(10.0),
                                  child: IconButton(
                                    onPressed: () => navegacaoCarro(), 
                                    icon: Image.asset(carros[0].img[0]),
                                    tooltip: carros[0].nomeCarro,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(45),
                                    color: const Color.fromARGB(255, 0, 20, 49), 
                                  ),
                                  padding: const EdgeInsets.all(20.0),
                                    margin: const EdgeInsets.all(10.0),
                                    child: IconButton(
                                      onPressed: () => navegacaoCarro(), 
                                      icon: Image.asset(carros[1].img[0]),
                                      tooltip: carros[1].nomeCarro,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 0, 20, 49), 
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    margin: const EdgeInsets.all(10.0),
                                    child: IconButton(
                                      onPressed: () => navegacaoCarro(), 
                                      icon: Image.asset(carros[2].img[0]),
                                      tooltip: carros[2].nomeCarro,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 0, 20, 49), 
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    margin: const EdgeInsets.all(10.0),
                                    child: IconButton(
                                      onPressed: () => navegacaoCarro(), 
                                      icon: Image.asset(carros[3].img[0]),
                                      tooltip: carros[3].nomeCarro,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 0, 20, 49), 
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    margin: const EdgeInsets.all(10.0),
                                    child: IconButton(
                                      onPressed: () => navegacaoCarro(), 
                                      icon: Image.asset(carros[4].img[0]),
                                      tooltip: carros[4].nomeCarro,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 0, 20, 49), 
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    margin: const EdgeInsets.all(10.0),
                                    child: IconButton(
                                      onPressed: () => navegacaoCarro(), 
                                      icon: Image.asset(carros[5].img[0]),
                                      tooltip: carros[5].nomeCarro,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      Container(
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
                      child: Column(
                        children: [
                          cenarios[0].construirTitulo(title: cenarios[0].textosPag[0]),
                          CarouselSlider(
                            options: CarouselOptions(
                              enlargeCenterPage: true,
                              onPageChanged: (currentIndex, reason) {
                                setState((){
                                  index = currentIndex;
                                });
                              },
                            ),
                            items: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 0, 20, 49), 
                                ),
                                padding: const EdgeInsets.all(20.0),
                                margin: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () => navegacaoCenario(), 
                                  icon: Image.asset(cenarios[0].img[0]),
                                  tooltip: cenarios[0].nome,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 0, 20, 49), 
                                ),
                                padding: const EdgeInsets.all(20.0),
                                margin: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () => navegacaoCenario(), 
                                  icon: Image.asset(cenarios[1].img[0]),
                                  tooltip: cenarios[1].nome,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 0, 20, 49), 
                                ),
                                padding: const EdgeInsets.all(20.0),
                                margin: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () => navegacaoCenario(), 
                                  icon: Image.asset(cenarios[2].img[0]),
                                  tooltip: cenarios[2].nome,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 0, 20, 49), 
                                ),
                                padding: const EdgeInsets.all(20.0),
                                margin: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () => navegacaoCenario(), 
                                  icon: Image.asset(cenarios[3].img[0]),
                                  tooltip: cenarios[3].nome,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 0, 20, 49), 
                                ),
                                padding: const EdgeInsets.all(20.0),
                                margin: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () => navegacaoCenario(), 
                                  icon: Image.asset(cenarios[4].img[0]),
                                  tooltip: cenarios[4].nome,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),)
    );
  }
}