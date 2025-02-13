import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_form_text_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/accept_terms_and_conditions.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/already_have_an_account.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomFormTextField(
              hint: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomFormTextField(
              hint: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomFormTextField(
              hint: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.visibility,
                color: Color(0xffc9cecf),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const AcceptTermsAndConditions(),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              text: 'إنشاء حساب جديد',
              onPressed: () {},
            ),
            const SizedBox(
              height: 24,
            ),
            const AlreadyHaveAnAccount()
          ],
        ),
      ),
    );
  }
}
