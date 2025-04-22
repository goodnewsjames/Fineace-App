import 'package:fineace/app_barrels.dart';

class FineaceApp extends StatelessWidget {
  const FineaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fineace',
      
      initialRoute: '/splashScreen',
      routes: {
        '/splashScreen': (context) => const SplashScreen(),
        '/onboardingScreen': (context) => const OnboardingScreen(),
        '/signInScreen': (context) => const SignInScreen(),
      },
    );
  }
}