import 'package:exercici1/screens/contador_pages.dart';
import 'package:flutter/material.dart';

class SaMevaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage(),
    );
  }
}
