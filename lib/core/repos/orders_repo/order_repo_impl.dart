import 'package:either_dart/either.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/repos/orders_repo/order_repo.dart';
import 'package:fruits_hub/core/services/backend_endpoints.dart';
import 'package:fruits_hub/core/services/database_service.dart';
import 'package:fruits_hub/features/checkout/data/models/order_model.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';

class OrderRepoImpl implements OrderRepo {
  final DataBaseService dataBaseService;

  OrderRepoImpl(this.dataBaseService);
  @override
  Future<Either<Failure, void>> createOrder(
      OrderInputEntity orderInputEntity) async {
    try {
      await dataBaseService.addData(
          path: BackendEndpoints.addOrder,
          data: OrderModel.fromEntity(orderInputEntity).toJson());

      return const Right(null);
    } catch (e) {
      return Left(ServerFailure('Failed to create order'));
    }
  }
}
