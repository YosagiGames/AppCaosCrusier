import 'package:flutter/material.dart';

class ArtePag extends StatefulWidget{
  const ArtePag ({super.key,});

  @override
  State<ArtePag> createState() => _ArtePag();
}

class _ArtePag extends State<ArtePag> {
  
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
                const SizedBox(
                  height: 60,
                  child: Text('Arte'),
                ),
                Image.asset('name'),
              ],
            )
          )
        )
      )
    )
    );
  }
}