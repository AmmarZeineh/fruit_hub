import 'dart:convert';

import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_preference_singletone.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

UserEntity getUserData() {
  var jsonData = Prefs.getString(kUserData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonData));
  return userEntity;
}
