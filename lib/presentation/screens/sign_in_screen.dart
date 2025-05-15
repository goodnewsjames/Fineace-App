import 'package:fineace/app_barrels.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isButtonEnabled = false;
  bool isLoading = false;
  bool isGoogleButtonLoading = false;
  final dataSource = FirebaseDatasource(
    firebaseAuth: FirebaseAuth.instance,
  );
  void checkFormValid() {
    final isEmailValid =
        FormValidationConstant.validateEmail(
          emailController.text,
        );
    final isPasswordValid =
        FormValidationConstant.validateLoginPassword(
          passwordController.text,
        );
    if (isEmailValid == null && isPasswordValid == null) {
      // Proceed with login
      setState(() {
        isButtonEnabled = true;
      });
    } else {
      // Show error messages
      setState(() {
        isButtonEnabled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal: 20,
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
                    onpress: () {
                      Navigator.pop(context);
                    },
                  ),
                  SquareButton(
                    onpress: () {},
                    iconPath: AssetConstant.infoIconPath,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Fineace',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 255, 69, 13),
                ),
              ),
              SizedBox(height: 36),
              Text(
                'Sign In your Account',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 51, 27, 0),
                ),
              ),
              SizedBox(height: 24),
              TextInputField(
                onChanged: (value) {
                  checkFormValid();
                },
                controller: emailController,
                validator:
                    FormValidationConstant.validateEmail,
                hintText: 'Email',
                prefixIconPath: 'assets/icons/message.svg',
              ),
              SizedBox(height: 16),
              TextInputField(
                onChanged: (value) {
                  checkFormValid();
                },
                controller: passwordController,
                validator:
                    FormValidationConstant
                        .validateLoginPassword,
                hintText: 'Password',
                prefixIconPath: 'assets/icons/security.svg',
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  AppCheckbox(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Remember Me',
                      style: TextStyle(
                        fontFamily: 'LexendDeca',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(
                          255,
                          153,
                          153,
                          153,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
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
                  ),
                ],
              ),
              SizedBox(height: 12),
              AppButton(
                isLoading: isLoading,
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  final result = await dataSource.signIn(
                    email: emailController.text.trim(),
                    password:
                        passwordController.text.trim(),
                  );
                  if (result?.user != null) {
                    print(result?.user?.email);
                    setState(() {
                      isLoading = false;
                    });
                  }
                },
                text: 'Sign In',
                isEnabled: isButtonEnabled,
              ),
              SizedBox(height: 120),
              AlternateSignupButton(
                isLoading: isGoogleButtonLoading,
                onclick: () async {
                  setState(() {
                    isGoogleButtonLoading = true;
                  });
                  final result =
                      await dataSource.signInWithGoogle();
                  if (result.user != null) {
                    print(result.user?.email);
                  }
                  setState(() {
                    isGoogleButtonLoading = false;
                  });
                },
                text: 'Sign In with Google',
                iconPath: AssetConstant.googleIconPath,
              ),
              SizedBox(height: 16),
              AlternateSignupButton(
                onclick: () {},
                text: 'Sign In with Apple',
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
