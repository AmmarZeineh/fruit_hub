import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_form_text_field.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:provider/provider.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection(
      {super.key, required this.formKey, required this.valueListenable});
  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> valueListenable;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) => Form(
          key: formKey,
          autovalidateMode: value,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddressEntity!.name =
                      value;
                },
                hintText: 'الاسم كامل',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  context
                      .read<OrderInputEntity>()
                      .shippingAddressEntity!
                      .email = value;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  context
                      .read<OrderInputEntity>()
                      .shippingAddressEntity!
                      .address = value;
                },
                hintText: 'العنوان',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  context.read<OrderInputEntity>().shippingAddressEntity!.city =
                      value;
                },
                hintText: 'المدينه',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  context
                      .read<OrderInputEntity>()
                      .shippingAddressEntity!
                      .floor = value;
                },
                hintText: 'رقم الطابق , رقم الشقه ..',
                textInputType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomFormTextField(
                onSaved: (value) {
                  context
                      .read<OrderInputEntity>()
                      .shippingAddressEntity!
                      .phone = value;
                },
                hintText: 'رقم الهاتف',
                textInputType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
