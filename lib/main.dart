import 'package:flutter/material.dart';
import 'package:yosalove/screen/Team_List.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yosalove',
      home: TeamList(),
    );
  }
}





