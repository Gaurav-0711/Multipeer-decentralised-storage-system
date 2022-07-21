import 'package:dsapp/views/login.dart';
import 'package:flutter/material.dart';
import 'functions/ThemeClass.dart';
import 'functions/rsa.dart';
import './views/download.dart';
import './views/index.dart';
import 'views/upload.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/upload': (context) => const Upload(),
        '/download':(context) => const Download(),
      },
    );
  }
}


