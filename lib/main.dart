import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart'; // Plugin untuk AutoSizeText

// Widget kustom untuk menampilkan teks berwarna merah
class RedTextWidget extends StatelessWidget {
  final String text;

  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: const MyHomePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Container berwarna kuning dengan widget RedTextWidget di dalamnya
          Container(
            color: Colors.yellowAccent,
            padding: const EdgeInsets.all(8.0),
            child: const RedTextWidget(
              text: 'You have pushed...',
            ),
          ),
          // Container berwarna hijau dengan teks di dalamnya
          Container(
            color: Colors.greenAccent,
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'You have pushed the button this many times:',
              textAlign: TextAlign.center,
            ),
          ),
          // Menampilkan counter angka
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,

          ),
        ],
      ),
    );
  }
}
