import 'package:flutter/material.dart';
import 'package:trabalho/common/themes/default_theme.dart';
import 'package:trabalho/features/onboarding/onboarding.dart';
import 'package:trabalho/features/sign_up/sign_up_page.dart';
import 'package:trabalho/features/splash/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      home: const SplashPage(), //página 1
      //home: const OnboardingPage(), //página 2
      //home: const SignUpPage(), // página 3
    );
  }
}
