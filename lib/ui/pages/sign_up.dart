import 'package:ecommerce/ui/pages/sign_in.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/shared/theme.dart';
import 'package:ecommerce/ui/widgets/button_text.dart';
import 'package:ecommerce/ui/widgets/custombutton.dart';
import 'package:ecommerce/ui/widgets/forms.dart';
import 'package:ecommerce/ui/widgets/title.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            Container(
              width: 155,
              height: 50,
              margin: const EdgeInsets.only(
                top: 100,
                bottom: 50,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo_light.png',
                  ),
                ),
              ),
            ),
            TitlePage(
              title: 'Just Us to Unlock\nYour Growth',
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(
                22,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE Input NAME
                  const CustomFromField(
                    title: 'Name',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // NOTE Input EMAIL
                  const CustomFromField(
                    title: 'Email Address',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // NOTE Input Password
                  CustomFromField(
                    title: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    text: 'Continue',
                    buttonColor: purpleColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ButtonText(
              onPressed: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              text: 'Sign In',
            ),
          ]),
    );
  }
}
