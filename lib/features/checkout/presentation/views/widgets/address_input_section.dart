import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_form_text_field.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomFormTextField(
            hintText: 'الاسم كامل',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            hintText: 'البريد الإلكتروني',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            hintText: 'العنوان',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            hintText: 'المدينه',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            hintText: 'رقم الطابق , رقم الشقه ..',
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            hintText: 'رقم الهاتف',
            textInputType: TextInputType.number,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
