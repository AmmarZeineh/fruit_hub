import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.uId, required super.name, required super.email});

  factory UserModel.fromFireBaseAuth(User user) {
    return UserModel(
      uId: user.uid,
      name: user.displayName ?? '',
      email: user.email ?? '',
    );
  }
  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      uId: map['uId'],
      name: map['name'],
      email: map['email'],
    );
  }
  factory UserModel.fromUserEntity(UserEntity user) {
    return UserModel(uId: user.uId, name: user.name, email: user.email);
  }

  toMap() => {
        'uId': uId,
        'name': name,
        'email': email,
      };
}
