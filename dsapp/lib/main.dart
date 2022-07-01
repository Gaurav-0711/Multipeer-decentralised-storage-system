import 'package:flutter/material.dart';
import 'ThemeClass.dart';
import 'rsa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeClass.darkTheme,
      home: const Homely(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 400;
  final int _sum = RsaEncryption.compute(5, 10);
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: const Text("Save"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Lessgo"),
            ),
          ],
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Who all use this app?',
                ),
                Text(
                  '$_counter\n  $_sum',
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    _incrementCounter();
                  },
                  child: const Text('Hit it guys'),
                ),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            child: const Icon(Icons.restore_from_trash_rounded))
        //    floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Homely extends StatefulWidget {
  final String title;
  const Homely({Key? key, required this.title}) : super(key: key);

  @override
  _HomelyState createState() => _HomelyState();
}

class _HomelyState extends State<Homely> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 56, 18, 210),
        title:const Text('Welcome to our app'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color.fromARGB(255, 44, 8, 85),
                Color.fromARGB(255, 45, 69, 206),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.upload_file_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.download_for_offline_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(50),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.lightGreenAccent),
        ),
        child: const Center(
            child: Text(
                'Hello guys\n We are a group of 6th sem CSE students who are dwelling into\n the world of blockchain',
      textAlign: TextAlign.center,
      ),
      ),
      ),
    )
    );
  }
}
