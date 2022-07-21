import 'package:flutter/material.dart';
import '../functions/rsa.dart';

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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 56, 18, 210),
          title:  TextButton( 
          child:  const Text('Welcome to the future'), 
          onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
          ),
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
              onPressed: () {
                Navigator.of(context).pushNamed('/upload');
              },
            ),
            IconButton(
              icon: const Icon(Icons.download_for_offline_outlined),
              onPressed: () {
                Navigator.of(context).pushNamed('/download');
              },
            ),
          ],
        ),
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/blockchain.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(90),
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
            )
            );
  }
}
