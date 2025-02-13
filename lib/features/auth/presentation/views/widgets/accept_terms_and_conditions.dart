import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_checkbox.dart';

class AcceptTermsAndConditions extends StatefulWidget {
  const AcceptTermsAndConditions({super.key});

  @override
  State<AcceptTermsAndConditions> createState() =>
      _AcceptTermsAndConditionsState();
}

class _AcceptTermsAndConditionsState extends State<AcceptTermsAndConditions> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          onChanged: (value) {
            isChecked = value;
            setState(() {});
          },
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xff949D9E),
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.primaryLight,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
