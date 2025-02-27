import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/backend_endpoints.dart';
import 'package:fruits_hub/core/services/database_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DataBaseService dataBaseService;

  AuthRepoImpl(
      {required this.firebaseAuthService, required this.dataBaseService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(uId: user.uid, name: name, email: email);
      await addUserToDataBase(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      log('AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(ServerFailure(message: e.toString()));
    } catch (e) {
      await deleteUser(user);

      log('AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(ServerFailure(message: 'An Erorr happend try again later'));
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await user.delete();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logInUsingEmailOrPassword(
      {required String email, required String password}) async {
    try {
      var user = await firebaseAuthService.loginUsingEmailAndPassword(
          email: email, password: password);
      var userEntity = await fetchUserData(uId: user.uid);
      return Right(userEntity);
    } on Exception catch (e) {
      log('AuthRepoImpl.loginUsingEmailAndPassword: ${e.toString()}');

      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFireBaseAuth(user);
      await addUserToDataBase(user: userEntity);
      return Right(userEntity);
    } catch (e) {
      await deleteUser(user);

      log('AuthRepoImpl.logInWithGoogle: ${e.toString()}');
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      var userEntity = UserModel.fromFireBaseAuth(user);
      await addUserToDataBase(user: userEntity);
      return Right(userEntity);
    } catch (e) {
      await deleteUser(user);

      log('AuthRepoImpl.logInWithFacebook: ${e.toString()}');
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future addUserToDataBase({required UserEntity user}) async {
    await dataBaseService.addData(
        path: BackendEndpoints.addUser, data: user.toMap(), docId: user.uId);
  }

  @override
  Future<UserEntity> fetchUserData({required String uId}) async {
    var data = await dataBaseService.getData(
        path: BackendEndpoints.addUser, docId: uId);
    return UserModel.fromJson(data);
  }
}
