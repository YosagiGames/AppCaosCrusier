import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Caos Cruiser'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 119, 0, 0),
        title: const Text('Caos Cruiser',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),),),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            Text(
              'Caos Cruiser',
            ),
          ],
        ),
      ),
    );
  }
}
