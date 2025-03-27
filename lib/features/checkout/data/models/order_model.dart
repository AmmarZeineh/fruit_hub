import 'package:fruits_hub/features/checkout/data/models/product_order_model.dart';
import 'package:fruits_hub/features/checkout/data/models/shipping_address_model.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';

class OrderModel {
  final double totalPrice;
  final String uID;
  final ShippingAddressModel shippingAddressModel;
  final String paymentMethod;
  final List<ProductOrderModel> products;

  OrderModel(
      {required this.totalPrice,
      required this.uID,
      required this.shippingAddressModel,
      required this.paymentMethod,
      required this.products});

  factory OrderModel.fromEntity(OrderInputEntity orderInputEntity) {
    return OrderModel(
      totalPrice: orderInputEntity.cartEntity.calculateTotalPrice().toDouble(),
      uID: orderInputEntity.uID,
      shippingAddressModel: ShippingAddressModel.fromEntity(
          orderInputEntity.shippingAddressEntity!),
      paymentMethod: orderInputEntity.payWithCash == true ? 'Cash' : 'PayPal',
      products: orderInputEntity.cartEntity.items
          .map((cartItem) => ProductOrderModel.fromEntity(cartItem))
          .toList(),
    );
  }

  toJson() {
    return {
      'totalPrice': totalPrice,
      'status': 'pending',
      'uID': uID,
      'shippingAddressModel': shippingAddressModel.toJson(),
      'paymentMethod': paymentMethod,
      'products': products.map((product) => product.toJson()).toList(),
    };
  }
}
