import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trabalho/common/constant/app_colors.dart';
import 'package:trabalho/common/constant/app_text_styles.dart';
import 'package:trabalho/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/main.png'),
            ),
            Text(
              'Cuide da sua saúde',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.purple,
              ),
            ),
            Text(
              'você é importante',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryButton(
                text: 'Iniciar',
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 0, right: 0, top: 0, bottom: 16.0),
              child: CustomTextButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //Dequitar o toque
      onTap: () => log('message'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Já tem conta? ',
              style: AppTextStyles.smallText.copyWith(
                color: Color.fromARGB(133, 47, 47, 47),
              )),
          Text(
            'Login',
            style: AppTextStyles.smallText.copyWith(
              color: AppColors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
