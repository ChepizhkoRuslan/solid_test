import 'package:flutter/material.dart';
import 'package:solid_test/pages/colors_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Solid Test'),
          ),
          body: ColorsPage(),
        ));
  }
}
