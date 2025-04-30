import 'package:fineace/app_barrels.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    required this.hintText,
    required this.prefixIconPath,
    super.key,
  });
  final String hintText;
  final String prefixIconPath;
  //  color: Color.fromARGB(255, 179, 179, 179),

  final bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 335),
      child: TextFormField(
        decoration: InputDecoration(
        fillColor: Colors.black,

          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 12,
            fontFamily: 'LexendDeca',
            color: Color.fromARGB(255, 179, 179, 179),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
             left: 16,
             right: 12,
            ),
            child: SvgPicture.asset(
              prefixIconPath,
              height: 24,
              width: 24,
              
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 242, 242, 242),
            ),

          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 255, 69, 13),
              width: 1,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
        ),
      ),
    );
  }
}
