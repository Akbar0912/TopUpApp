import 'package:ecommerce/ui/pages/home_page.dart';
import 'package:ecommerce/ui/pages/onboarding_page.dart';
import 'package:ecommerce/ui/pages/pages_success.dart';
import 'package:ecommerce/ui/pages/profile_page.dart';
import 'package:ecommerce/ui/pages/sign_in.dart';
import 'package:ecommerce/ui/pages/sign_up.dart';
import 'package:ecommerce/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboardingPage': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignIn(),
        '/sign-up': (context) => const SignUp(),
        '/sign-up-success': (context) => const PagesSuccess(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
