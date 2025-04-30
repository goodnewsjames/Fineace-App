import 'package:flutter/material.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.25,
      child: Checkbox(
        splashRadius: 5,
        value: false,
        fillColor: WidgetStateColor.resolveWith((states) => Colors.white,),
        focusColor: Color.fromARGB(255, 230, 0, 0),
        onChanged: (value) {},
        activeColor: const Color.fromARGB(255, 255, 69, 13),
        checkColor: Colors.white,
        side: const BorderSide(
          color: Color.fromARGB(255, 242, 242, 242),
          width: 1,
          
      
        ),
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          // side: const BorderSide(
          //   color: Color.fromARGB(255, 242, 242, 242),
          //   width: 1,
          // ),
        ),
      ),
    );
  }
}
