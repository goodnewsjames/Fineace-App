import 'package:fineace/app_barrels.dart';

class AlternateSignupButton extends StatelessWidget {
  const AlternateSignupButton({
    required this.text,
    required this.iconPath,
    required this.onclick,
    this.isLoading = false,
    super.key,
  });
  final String text;
  final String iconPath;
  final VoidCallback onclick;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 335,
      child: ElevatedButton(
        onPressed: onclick,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,

          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontFamily: 'LexendDeca',
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
        child:
            isLoading
                ? CircularProgressIndicator()
                : Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(iconPath),
                    SizedBox(width: 0),
                    Text(text),
                  ],
                ),
      ),
    );
  }
}
