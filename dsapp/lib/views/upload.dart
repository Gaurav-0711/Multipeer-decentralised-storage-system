import 'package:flutter/material.dart';
import '../functions/rsa.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);
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
      body: Container(
        constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/blockchain.jpg"),
                        fit: BoxFit.cover)),
        
        child:const Center(
        child: Text('Hi'),
      ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {
      
    },
    child: const Icon(Icons.upload_rounded),),
    floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
