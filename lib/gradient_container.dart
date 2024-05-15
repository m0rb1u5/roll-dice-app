import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});

  GradientContainer.purple({super.key}) : colors = [Colors.blue, Colors.purple];

  final List<Color> colors;

  static const Alignment startAlignment = Alignment.topLeft;
  static const Alignment endAlignment = Alignment.bottomRight;

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.amber,
                backgroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 28,)
              ),
              child: const Text('Roll Dice'),
            )
          ],
      )),
    );
  }
}
