import 'package:fineace/app_barrels.dart';

class AppThemeData {
  static final defaultPinTheme = PinTheme(
    textStyle: TextStyle(
      fontSize: 28,
      fontFamily: 'LexendDeca',
      color: Colors.black,
      fontWeight: FontWeight.w300,
    ),
    width: 64,
    height: 54,
    decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromARGB(255, 230, 230, 230),
        width: 1,
      ),
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),

    margin: const EdgeInsets.symmetric(horizontal: 4),
  );
}
