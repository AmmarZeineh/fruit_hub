import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/step_item.dart';

class CheckoutStepsList extends StatelessWidget {
  const CheckoutStepsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        generateSteps().length,
        (index) {
          return Expanded(
            child: StepItem(
              title: generateSteps()[index],
              index: (index + 1).toString(),
            ),
          );
        },
      ),
    );
  }

  List<String> generateSteps() {
    return [
      'الشحن',
      'العنوان',
      'الدفع',
      'المراجعه',
    ];
  }
}
