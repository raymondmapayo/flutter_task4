import 'package:flutter/material.dart';
import 'package:mapayo_task4_week4_5/gridviewesample.dart';
import 'package:mapayo_task4_week4_5/itemlist.dart';
import 'package:mapayo_task4_week4_5/itemview.dart';
import 'package:mapayo_task4_week4_5/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Page1(),
    );
  }
}
