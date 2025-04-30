import 'package:fineace/app_barrels.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(text: 'Sign in',),
            const SizedBox(height: 20),
            TextInputField(
              hintText: 'Username',
              prefixIconPath: 'assets/icons/user.svg',
            ),
            const SizedBox(height: 20),
            AppCheckbox(),
            const SizedBox(height: 20),
            AlternateSignupButton(
              text: 'Sign in with Google',
              iconPath: 'assets/icons/google.svg',
            ),

            const SizedBox(height: 20),
            PinputWidget(),
            const SizedBox(height: 20),
            SquareButton(icon: Icons.arrow_back,),
          ],
        ),
      ),
    );
  }
}
