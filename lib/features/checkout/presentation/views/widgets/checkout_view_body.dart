import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/check_out_steps_list.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          buildAppBar(
            context,
            title: 'الشحن',
            backButton: true,
          ),
          const SizedBox(
            height: 16,
          ),
          const CheckoutStepsList()
        ],
      ),
    );
  }
}


