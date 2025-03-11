import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/check_out_steps_list.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_page_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

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
          const CheckoutStepsList(),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: CheckoutPageView(pageController: pageController),
          ),
          CustomButton(
            text: 'التالي',
            onPressed: () {},
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
