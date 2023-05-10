import 'package:flutter/material.dart';
import './input.dart';
import './results_page.dart';

void main() {
  runApp(const BMI_Calculator());
}

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InputPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => InputPage(),
      //   '/results': (context) => ResultsPage(),
      // },
    );
  }
}
