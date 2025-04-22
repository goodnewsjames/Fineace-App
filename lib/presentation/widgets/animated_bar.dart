import 'package:flutter/material.dart';

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 300),
      height: 3,
      width: isActive ? 30 : 16,
      decoration: BoxDecoration(
        color: isActive? Color.fromARGB(255, 255, 71, 13) : Color.fromARGB(255, 229, 229, 229),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}