import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.suffixIcon,
      this.onSaved,
      this.obscureText = false});
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value!.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyles.bold13.copyWith(color: const Color(0xff949d9e)),
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
        filled: true,
        fillColor: const Color(
          0xfff9fafa,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        color: Color(
          0xffe6e9e9,
        ),
      ),
    );
  }
}
