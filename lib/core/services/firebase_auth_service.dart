import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      log('FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'The account already exists for that email.');
      } else {
        throw CustomException(
            message: 'An unknown error occurred, try again later.');
      }
    } catch (e) {
      throw CustomException(
          message: 'An unknown error occurred, try again later.');
    }
  }

  Future<User> loginUsingEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      log('FirebaseAuthService.loginUsingEmailAndPassword: ${e.toString()}');
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'Wrong Email Or Password.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'Wrong Email Or Password.');
      } else {
        log('FirebaseAuthService.loginUsingEmailAndPassword: ${e.toString()}');
        throw CustomException(
            message: 'An unknown error occurred, try again later.');
      }
    }
  }
}
