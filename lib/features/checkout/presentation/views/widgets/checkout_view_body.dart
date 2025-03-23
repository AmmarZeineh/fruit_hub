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
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
          CheckoutStepsList(
            pageController: pageController,
            currentIndex: currentIndex,
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: CheckoutPageView(pageController: pageController),
          ),
          CustomButton(
            text: getNextText(currentIndex),
            onPressed: () {
              pageController.animateToPage(currentIndex + 1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.bounceIn);
            },
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}

String getNextText(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return 'التالي';
    case 1:
      return 'التالي';
    case 2:
      return 'ادفع عبر PayPal';
    default:
      return 'التالي';
  }
}
