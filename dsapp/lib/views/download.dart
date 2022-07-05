import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Download extends StatefulWidget {
  const Download({Key? key}) : super(key: key);

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
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
            onPressed: () {
              Navigator.of(context).pushNamed('/upload');
            },
          ),
          IconButton(
            icon: const Icon(Icons.download_for_offline_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text('Download this mofo'),
      ),
    );
  }
}
