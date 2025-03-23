import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/address_input_section.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/payment_section.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/shipping_section.dart';

class CheckoutPageView extends StatelessWidget {
  const CheckoutPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: pageViewItems().length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return pageViewItems()[index];
      },
    );
  }

  List<Widget> pageViewItems() {
    return [
      const ShippingSection(),
      const AddressInputSection(),
      const PaymentSection(),
    ];
  }
}

