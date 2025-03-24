import 'package:either_dart/either.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';

abstract class OrderRepo {
  Future<Either<Failure, void>> createOrder(OrderInputEntity orderInputEntity);
}
