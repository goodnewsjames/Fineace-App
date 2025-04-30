import 'package:fineace/app_barrels.dart';
import 'package:fineace/presentation/constants/asset_constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal:20,
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
                        AssetConstant.arrowLeftIconPath, onpress: () {
                          Navigator.pop(context);
                        },
                  ),
                  SquareButton(
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
                hintText: 'Username',
                prefixIconPath: 'assets/icons/user.svg',
              ),
              SizedBox(height: 16),
              TextInputField(
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
                  SizedBox(width: 60,),
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
              AppButton(text: 'Sign In'),
              SizedBox(height: 120),
              AlternateSignupButton(
                text: 'Sign In with Google',
                iconPath: AssetConstant.googleIconPath,
              ),
              SizedBox(height: 16),
              AlternateSignupButton(
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
