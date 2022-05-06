import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//widget responsável por todo o app
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false, //retira o banner de debug
    );
  }
}

//widget responsável pela Home
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffd16ba5),
              Color(0xffc777b9),
              Color(0xffba83ca),
              Color(0xffaa8fd8),
              Color(0xff9a9ae1),
              Color(0xff8aa7ec),
              Color(0xff79b3f4),
              Color(0xff69bff8),
              Color(0xff52cffe),
              Color(0xff41dfff),
              Color(0xff46eefa),
              Color(0xff5ffbf1)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Seja bem vindo(a)!",
              style: TextStyle(
                fontSize: 32,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                isFull ? "LOTADO" : "PODE ENTRAR",
                style: TextStyle(
                    fontSize: 24,
                    color: isFull ? Colors.red : Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
              child: Text(
                '$count',
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: isFull ? Colors.red : Colors.black87,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                      backgroundColor: isEmpty
                          ? Colors.white.withOpacity(0.2)
                          : Colors.white,
                      fixedSize: const Size(100, 70),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text(
                    "SAIU",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: isFull ? null : increment,
                  style: TextButton.styleFrom(
                      backgroundColor:
                          isFull ? Colors.white.withOpacity(0.2) : Colors.white,
                      fixedSize: const Size(100, 70),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text("ENTROU",
                      style: TextStyle(color: Colors.black87, fontSize: 16)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
