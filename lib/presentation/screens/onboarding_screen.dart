import 'package:fineace/app_barrels.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() =>
      _OnboardingScreenState();
}

class _OnboardingScreenState
    extends State<OnboardingScreen> {
  int selectedIndex = 0;
  final List<Widget> _pages = [
    OnboardingComponent(
      headerText: 'Savings Management',
      subHeaderText:
          'Track your savings and build the\nhabits saving money',
      imagePath: 'assets/svg_images/Illustration 4.svg',
    ),
    OnboardingComponent(
      headerText: 'Make Payments Easier',
      subHeaderText:
          'Find new opportunity to make\nyour life better',
      imagePath: 'assets/svg_images/Illustration 2.svg',
    ),
    OnboardingComponent(
      headerText: 'Grow Up Your Money',
      subHeaderText:
          'Make investment choice to grow\nyour money',
      imagePath: 'assets/svg_images/Illustration 1.svg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      '/signInScreen',
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 16,
                          color: Color.fromARGB(
                            255,
                            255,
                            69,
                            13
                          ),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/arrow-right.svg',
                        height: 16,
                        width: 16,

                        colorFilter: const ColorFilter.mode(
                          Color.fromARGB(255, 255, 69, 13),
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 450,
            width: double.infinity,
            child: PageView.builder(
              itemCount: _pages.length,
              itemBuilder:
                  (context, index) => _pages[index],
              onPageChanged:
                  (value) => setState(() {
                    selectedIndex = value;
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: AnimatedBar(
                  isActive: selectedIndex == index,
                ),
              ),
            ),
          ),
          Spacer(),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontFamily: 'LexendDeca',
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 102, 102, 102),
              ),
              children: [
                TextSpan(
                  text:
                      'By logging in or registering, you agree to our ',
                  style: const TextStyle(
                    fontFamily: 'LexendDeca',
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(
                      255,
                      102,
                      102,
                      102,
                    ),
                  ),
                ),
                TextSpan(
                  text: 'Terms of Service',
                  style: const TextStyle(
                    fontFamily: 'LexendDeca',
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 255, 71, 13),
                  ),
                ),
                TextSpan(text: '\n and '),
                TextSpan(
                  text: 'Privacy Policy',
                  style: const TextStyle(
                    fontFamily: 'LexendDeca',
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 255, 71, 13),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
