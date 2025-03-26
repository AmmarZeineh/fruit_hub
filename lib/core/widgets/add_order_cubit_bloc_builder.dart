import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/error_snack_bar.dart';
import 'package:fruits_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruits_hub/features/checkout/presentation/manger/add_order_cubit/add_order_cubit.dart';

class AddOrderCubitBlocBuilder extends StatelessWidget {
  const AddOrderCubitBlocBuilder({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        if (state is AddOrderSuccess) {
          errorSnackBar(context, 'تمت اضافة الطلب بنجاح');
        } else if (state is AddOrderFailure) {
          errorSnackBar(context, 'فشل في اضافة الطلب');
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
            isLoaging: state is AddOrderLoading, child: child);
      },
    );
  }
}
