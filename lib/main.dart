import 'package:app07_imc_20242/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: HomePage(),
    );
  }
}
