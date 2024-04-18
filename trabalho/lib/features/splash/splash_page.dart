import 'package:flutter/material.dart';
import 'package:trabalho/common/constant/app_colors.dart';
import 'package:trabalho/common/constant/app_text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.purpleOne),
        ),
        child: Text(
          'Sistema de Saúde',
          style: AppTextStyles.bigText.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
