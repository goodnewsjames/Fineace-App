import 'package:fineace/app_barrels.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  SquareButton(
                    iconPath:
                        AssetConstant.arrowLeftIconPath,
                  ),
                  SquareButton(
                    iconPath: AssetConstant.infoIconPath,
                  ),
                ],
              ),
              Text(
                'Fineace',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 255, 69, 13),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Sign up your Account',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 51, 27, 0),
                ),
              ),
              SizedBox(height: 24),
              TextInputField(
                hintText: 'Username',
                prefixIconPath: 'assets/icons/user.svg',
                validator:
                    FormValidationConstant.validateUserName,
              ),
              SizedBox(height: 30),
              TextInputField(
                validator:
                    FormValidationConstant.validateEmail,
                hintText: 'Email',
                prefixIconPath: 'assets/icons/message.svg',
              ),
              SizedBox(height: 24),
              TextInputField(
                validator:
                    FormValidationConstant.validatePassword,
                hintText: 'Password',
                prefixIconPath: 'assets/icons/security.svg',
                controller: passwordController,
              ),
              SizedBox(height: 24),

              TextInputField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                prefixIconPath: 'assets/icons/security.svg',
                validator: (value) {
                  return FormValidationConstant.validateConfirmPassword(
                    password: passwordController.text,
                    confirmPassword:
                        confirmPasswordController.text,
                  );
                },
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  AppCheckbox(),
                  SizedBox(width: 1),
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
                          text: ' Terms',
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
                          text: 'Conditions',
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
              SizedBox(height: 36),
              AppButton(text: 'Sign Up', onPressed: () {}),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
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
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacementNamed(
                                context,
                                '/signInScreen',
                              );
                            },
                      text: 'Sign In',
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
              SizedBox(height: 40),

              AlternateSignupButton(
                text: 'Sign up with Google',
                iconPath: AssetConstant.googleIconPath,
              ),
              SizedBox(height: 16),
              AlternateSignupButton(
                text: 'Sign up with Apple',
                iconPath: AssetConstant.appleIconPath,
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
