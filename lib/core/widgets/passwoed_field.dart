import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_form_text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomFormTextField(
      obscureText: obscureText ? true : false,
      onSaved: (value){},
      hint: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      suffixIcon: IconButton(
        icon: obscureText
            ? const Icon(
                Icons.visibility,
                color: Color(0xffc9cecf),
              )
            : const Icon(
                Icons.visibility_off,
                color: Color(0xffc9cecf),
              ),
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
      ),
    );
  }
}
