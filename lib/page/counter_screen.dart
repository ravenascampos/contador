import 'package:contador/controller/counter_controller.dart';
import 'package:contador/page/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterController controller = CounterController();

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
            Observer(
              builder: (_) {
                return Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    controller.isFull ? "LOTADO" : "PODE ENTRAR",
                    style: TextStyle(
                        fontSize: 24,
                        color: controller.isFull
                            ? Colors.red.shade400
                            : Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
              child: Observer(
                builder: (_) {
                  return Text(
                    '${controller.count}',
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: controller.isFull
                          ? Colors.red.shade400
                          : Colors.black87,
                    ),
                  );
                },
              ),
            ),
            Observer(
              builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      content: 'SAIU',
                      background: controller.isEmpty
                          ? Colors.white.withOpacity(0.2)
                          : Colors.white,
                      onPressed:
                          controller.isEmpty ? null : controller.decrement,
                    ),
                    CustomButton(
                      content: 'ENTROU',
                      background: controller.isFull
                          ? Colors.white.withOpacity(0.2)
                          : Colors.white,
                      onPressed:
                          controller.isFull ? null : controller.increment,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
