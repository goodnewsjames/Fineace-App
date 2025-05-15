import 'package:fineace/app_barrels.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    super.key,
    required this.iconPath,
    required this.onpress,
  });

  final String iconPath;
  final VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: IconButton(
        icon: SvgPicture.asset(iconPath),
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
        ),
      ),
    );
  }
}
