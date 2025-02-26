import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return Right(UserModel.fromFireBaseAuth(user));
    } on Exception catch (e) {
      log('AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');

      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logInUsingEmailOrPassword(
      {required String email, required String password}) async {
    try {
      var user = await firebaseAuthService.loginUsingEmailAndPassword(
          email: email, password: password);
      return Right(UserModel.fromFireBaseAuth(user));
    } on Exception catch (e) {
      log('AuthRepoImpl.loginUsingEmailAndPassword: ${e.toString()}');

      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return Right(UserModel.fromFireBaseAuth(user));
    } catch (e) {
      log('AuthRepoImpl.logInWithGoogle: ${e.toString()}');
      return Left(ServerFailure(message: e.toString()));
    }
  }
  @override
  Future<Either<Failure, UserEntity>> logInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return Right(UserModel.fromFireBaseAuth(user));
    } catch (e) {
      log('AuthRepoImpl.logInWithFacebook: ${e.toString()}');
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
