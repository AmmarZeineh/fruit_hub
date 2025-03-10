import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper_functions/error_snack_bar.dart';
import 'package:fruits_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:fruits_hub/features/home/presentation/views/main_view.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          errorSnackBar(context, state.message);
        } else if (state is LoginSuccess) {
          Navigator.pushNamed(context, MainView.routeName);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoaging: state is LoginLoading ? true : false,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
