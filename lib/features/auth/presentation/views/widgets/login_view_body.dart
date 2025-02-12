import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_form_text_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'هل نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.primaryLight),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              text: 'تسجيل الدخول',
              onPressed: () {},
            ),
            const SizedBox(
              height: 33,
            ),
            const DontHaveAnAccountWidget(),
            const SizedBox(
              height: 33,
            ),
            const OrDivider(),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              title: 'تسجيل بواسطة جوجل',
              image: Assets.imagesGoogleIcon,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              title: 'تسجيل بواسطة أبل',
              image: Assets.imagesAppleIcon,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              title: 'تسجيل بواسطة فيسبوك',
              image: Assets.imagesFacebookIcon,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
