import 'package:fineace/app_barrels.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: [
            Row(),
            Text('Fineace'),
            Text('Sign up your Account'),
            TextInputField(
              hintText: 'Username',
              prefixIconPath: 'assets/icons/user.svg',
            ),
            TextInputField(
              hintText: 'Email',
              prefixIconPath: 'assets/icons/message.svg',
            ),
            TextInputField(
              hintText: 'Password',
              prefixIconPath: 'assets/icons/security.svg',
            ),
            TextInputField(
              hintText: 'Confirm Password',
              prefixIconPath: 'assets/icons/security.svg',
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                AppCheckbox(),
                SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                    text: 'I agree to the',
                    style: TextStyle(
                      fontFamily: 'LexendDeca',
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(
                        255,
                        102,
                        102,
                        102,
                      ),
                    ),
                    children: [
                      TextSpan(
                        text: ' Terms of Service',
                        style: TextStyle(
                          fontFamily: 'LexendDeca',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(
                            255,
                            255,
                            71,
                            13,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          fontFamily: 'LexendDeca',
                          fontSize: 12,
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
                        text: ' Privacy Policy',
                        style: TextStyle(
                          fontFamily: 'LexendDeca',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(
                            255,
                            255,
                            71,
                            13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
