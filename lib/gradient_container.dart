import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});

  GradientContainer.purple({super.key}) : colors = [Colors.blue, Colors.purple];

  final List<Color> colors;

  static const Alignment startAlignment = Alignment.topLeft;
  static const Alignment endAlignment = Alignment.bottomRight;

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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
