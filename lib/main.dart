import 'package:delivaro/Dominos.dart';
import 'package:delivaro/Donals.dart';
import 'package:delivaro/Products.dart';
import 'package:flutter/material.dart';

import 'Maga.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false ),
      home: Donals(),
    );
  }
}
