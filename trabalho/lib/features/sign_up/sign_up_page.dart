import 'package:flutter/material.dart';
import 'package:trabalho/common/constant/app_colors.dart';
import 'package:trabalho/common/constant/app_text_styles.dart';
import 'package:trabalho/features/onboarding/onboarding.dart';
import 'package:trabalho/features/sign_up/sign_up_page.dart';
import 'package:trabalho/widgets/primary_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            Text(
              'CADASTRE-SE',
              style: AppTextStyles.mediumText.copyWith(
                color: AppColors.purple,
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/cadastro.png'),
            ),
            Form(
              child: Column(
                children: [
                  CustomTextFormField(
                    labelText: "seu nome",
                    hinText: "Nome Completo",
                  ),
                ],
              ),
            ),
            Form(
              child: Column(
                children: [
                  CustomTextFormField(
                    labelText: "seu e-mail",
                    hinText: "nome@email.com",
                  ),
                ],
              ),
            ),
            Form(
              child: Column(
                children: [
                  CustomTextFormField(
                    labelText: "seu telefone",
                    hinText: "(99) 9999-9999",
                  ),
                ],
              ),
            ),
            Form(
              child: Column(
                children: [
                  CustomTextFormField(
                    labelText: "seu endereço",
                    hinText: "Endereço",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryButton(
                text: 'Cadastrar',
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

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hinText;
  final String? labelText;
  const CustomTextFormField({
    Key? key,
    this.padding,
    this.hinText,
    this.labelText,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.purple),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 400.0, vertical: 15.0),
      child: TextFormField(
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          hintText: widget.hinText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText?.toUpperCase(),
          labelStyle: AppTextStyles.smallText.copyWith(color: AppColors.grey),
          focusedBorder: defaultBorder.copyWith(
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 137, 195, 243)),
          ),
          errorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(color: Color.fromARGB(255, 247, 9, 5)),
          ),
          focusedErrorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(color: Color.fromARGB(255, 247, 9, 5)),
          ),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}
