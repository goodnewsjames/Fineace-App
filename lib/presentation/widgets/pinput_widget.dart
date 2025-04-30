import 'package:fineace/app_barrels.dart';

class PinputWidget extends StatelessWidget {
  const PinputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: AppThemeData.defaultPinTheme,
      focusedPinTheme: AppThemeData.defaultPinTheme
          .copyDecorationWith(
            border: Border.all(
              color: const Color.fromARGB(255, 255, 69, 13),
            ),
            color: Color.fromARGB(255, 255, 243, 229),
          ),
      preFilledWidget: Container(
        width: 22.4,
        height: 1,
        color: Color.fromARGB(
          255,
          230,
          230,
          230,
        ), // Horizontal line as hint
      ),
      showCursor: true,
      keyboardType: TextInputType.number,
    );
  }
}
