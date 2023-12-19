import 'package:flutter/material.dart';
import 'package:httpexample/screens/product_screen.dart';

ColorScheme scheme1 = ColorScheme.fromSeed(seedColor: Colors.purple);
void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true, colorScheme: scheme1),
    home: Scaffold(body: ProductScreen()),
  ));
}
