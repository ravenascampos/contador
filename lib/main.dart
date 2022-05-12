import 'package:contador/page/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//widget responsável por todo o app
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterScreen(),
      debugShowCheckedModeBanner: false, //retira o banner de debug
    );
  }
}
