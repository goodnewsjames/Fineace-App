import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isEnabled = true,

  });
  final String text;
  final bool isEnabled;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 335,
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 255, 69, 13),
          foregroundColor: Colors.white,

          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Urbanist',
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
