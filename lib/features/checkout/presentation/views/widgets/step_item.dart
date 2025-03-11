import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/active_step_item.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/in_active_step_item.dart';

class StepItem extends StatelessWidget {
  const StepItem({super.key, required this.title, required this.index});
  final String title, index;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveStepItem(title: title),
      secondChild: InActiveStepItem(title: title, index: index),
      crossFadeState: CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    );
  }
}
