import 'package:fineace/app_barrels.dart';

class OnboardingComponent extends StatelessWidget {
  final String headerText;
  final String subHeaderText;
  final String imagePath;

  const OnboardingComponent({
    super.key,
    required this.headerText,
    required this.subHeaderText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        SvgPicture.asset(
          imagePath,
          height: 240,
          width: 240,
        ),
        const SizedBox(height: 30),
        Text(
          headerText,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 255, 134, 0),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subHeaderText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'LexendDeca',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 102, 102, 102),
          ),
        ),
        const SizedBox(height: 30),
        
      ],
    );
  }
}
