import 'package:bloc/bloc.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;

  Future<void> loginUsingEmailAndPassword(
      {required String email, required String password}) async {
    emit(LoginLoading());
    final result = await authRepo.logInUsingEmailOrPassword(
        email: email, password: password);
    result.fold(
      (faliure) => emit(LoginFailure(message: faliure.message)),
      (userEntity) => emit(LoginSuccess(user: userEntity)),
    );
  }

  Future<void> loginWithGoogle() async {
    emit(LoginLoading());
    final result = await authRepo.logInWithGoogle();
    result.fold((failure) {
      emit(LoginFailure(message: failure.message));
    }, (user) {
      emit(LoginSuccess(user: user));
    });
  }

  Future<void> loginWithFacebook() async {
    emit(LoginLoading());
    final result = await authRepo.logInWithFacebook();
    result.fold((failure) {
      emit(LoginFailure(message: failure.message));
    }, (user) {
      emit(LoginSuccess(user: user));
    });
  }
}
