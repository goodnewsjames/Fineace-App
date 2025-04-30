import 'package:fineace/app_barrels.dart';

class SquareButton extends StatelessWidget {
   SquareButton({
    super.key,
    required this.iconPath,
     this.onpress,
  });

  final String iconPath;
   VoidCallback? onpress = () {};
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: const BorderSide(
            color: Color.fromARGB(255, 242, 242, 242),
            width: 1,
          ),
          padding: const EdgeInsets.all(0),
          backgroundColor: Colors.white,
          overlayColor: Color.fromARGB(255, 242, 242, 242),
        ),
        child: SvgPicture.asset(iconPath),
      ),
    );
  }
}
