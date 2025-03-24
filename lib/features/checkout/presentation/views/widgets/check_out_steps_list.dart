import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/error_snack_bar.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/step_item.dart';

class CheckoutStepsList extends StatelessWidget {
  const CheckoutStepsList(
      {super.key, required this.currentIndex, required this.pageController});

  final int currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        generateSteps().length,
        (index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (context.read<OrderInputEntity>().payWithCash != null) {
                  pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                } else {
                  errorSnackBar(context, 'الرجاء اختيار طريقة دفع');
                }
              },
              child: StepItem(
                isSelected: index <= currentIndex,
                title: generateSteps()[index],
                index: (index + 1).toString(),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> generateSteps() {
  return [
    'الشحن',
    'العنوان',
    'الدفع',
  ];
}
