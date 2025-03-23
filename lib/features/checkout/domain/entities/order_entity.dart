import 'package:fruits_hub/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruits_hub/features/home/domain/entities/cart_entity.dart';

class OrderInputEntity {
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity? shippingAddressEntity;
  OrderInputEntity(
    this.cartEntity, {
    this.payWithCash,
    this.shippingAddressEntity,
  });
}
