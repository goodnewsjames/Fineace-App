import 'package:fineace/app_barrels.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    required this.hintText,
    required this.prefixIconPath,
    this.validator,
    this.controller,
    this.onChanged,
    super.key,
  });
  final String hintText;
  final String prefixIconPath;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  //  color: Color.fromARGB(255, 179, 179, 179),

  final bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 335),
      child: TextFormField(
        validator: validator,
        autovalidateMode:
            AutovalidateMode.onUserInteraction,
        controller: controller,
        onChanged: onChanged,
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
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 242, 242, 242),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1,
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
