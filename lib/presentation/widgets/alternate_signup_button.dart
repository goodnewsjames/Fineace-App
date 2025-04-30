import 'package:fineace/app_barrels.dart';

class AlternateSignupButton extends StatelessWidget {
  const AlternateSignupButton({
    required this.text,
    required this.iconPath,
    super.key,
  });
  final String text;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 335,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          overlayColor: Colors.transparent,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SvgPicture.asset(
                        iconPath,
                        height: 24,
                        width: 24,),
            // SvgPicture.asset(
            //   iconPath,
            //   height: 24,
            //   width: 24,
            //   errorBuilder: (context, error, stackTrace) => 
            //       const Icon(
            //     Icons.error,
            //     color: Colors.red,
            //   ),
            // ),
            SizedBox(width: 12),
            Text(text),
          ],
        ),
      ),
    );
  }
}
