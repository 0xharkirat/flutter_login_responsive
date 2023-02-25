import 'package:flutter/material.dart';
import 'package:flutter_login_responsive/widgets/gradient_button.dart';
import 'package:flutter_login_responsive/widgets/login_field.dart';
import 'package:flutter_login_responsive/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget> [
                Image.asset('assets/images/signin_balls.png'),
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50,),
                const SocialButton(
                  label: 'Continue with Google.',
                  iconPath: 'assets/svgs/g_logo.svg',
                ),
                const SizedBox(height: 20,),
                const SocialButton(
                  label: 'Continue with Facebook',
                  iconPath: 'assets/svgs/f_logo.svg',
                  horizontalPadding: 92,
                ),
                const SizedBox(height: 15,),
                const Text(
                  'or',
                  style: TextStyle(
                    fontSize: 17,
                  ),

                ),
                const SizedBox(height: 15,),
                const LoginField(hintText: 'Email',),
                const SizedBox(height: 15,),
                const LoginField(hintText: 'Password',),
                const SizedBox(height: 20,),
                GradientButton(onPressed: (){}),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
