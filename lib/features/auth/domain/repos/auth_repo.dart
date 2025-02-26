import 'package:either_dart/either.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<Failure, UserEntity>> logInUsingEmailOrPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntity>> logInWithGoogle();
  Future<Either<Failure, UserEntity>> logInWithFacebook();
}
