import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/error_snack_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_form_text_field.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/accept_terms_and_conditions.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/already_have_an_account.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, name, password;
  bool isObscure = true;
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: 'الاسم كامل',
                textInputType: TextInputType.name,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              AcceptTermsAndConditions(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: 'إنشاء حساب جديد',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isTermsAccepted) {
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                              email: email, password: password, name: name);
                    } else {
                      errorSnackBar(
                          context, 'يجب الموافقة على الشروط والأحكام');
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 24,
              ),
              const AlreadyHaveAnAccount()
            ],
          ),
        ),
      ),
    );
  }
}
