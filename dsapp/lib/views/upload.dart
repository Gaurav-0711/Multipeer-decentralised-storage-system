import 'package:flutter/material.dart';
import '../functions/rsa.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 56, 18, 210),
        title: const Text('Welcome to our app'),
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
            onPressed: () {
              Navigator.of(context).pushNamed('/download');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Hi'),
      ),
    );
  }
}
