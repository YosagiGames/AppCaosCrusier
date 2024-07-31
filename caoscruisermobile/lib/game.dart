class Game extends StatelessWidget{
  const Game ({super.key,});

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
        child: const Column(
          children: <Widget>[
             Text(
              'Jogo',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),)
  );
}
}