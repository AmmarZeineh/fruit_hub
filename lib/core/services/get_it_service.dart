import 'package:fruits_hub/core/repos/orders_repo/order_repo.dart';
import 'package:fruits_hub/core/repos/orders_repo/order_repo_impl.dart';
import 'package:fruits_hub/core/repos/products_repo/product_repo.dart';
import 'package:fruits_hub/core/repos/products_repo/product_repo_impl.dart';
import 'package:fruits_hub/core/services/database_service.dart';
import 'package:fruits_hub/core/services/fire_store_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DataBaseService>(FireStoreService());
  getIt.registerSingleton<ProductRepo>(
      ProductRepoImpl(getIt<DataBaseService>()));

  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      databaseService: getIt<DataBaseService>()));
  getIt.registerSingleton<OrderRepo>(OrderRepoImpl(getIt<DataBaseService>()));
}
