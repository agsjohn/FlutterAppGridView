import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Center(
          child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: const Text("Container 1"),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.pink,
            child: const Text("Container 2"),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.lightBlue,
            child: const Text("Container 3"),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.yellow,
            child: const Text("Container 4"),
          ),
        ],
      )),
    );
  }
}
