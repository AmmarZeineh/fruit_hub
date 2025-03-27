import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';

class Details {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});

  factory Details.fromEntity(OrderInputEntity entity) => Details(
        subtotal:
            entity.calculateTotalPriceAfterShippingAndDiscount().toString(),
        shipping: entity.calculateShippingPrice().toString(),
        shippingDiscount: entity.calculateShippingDiscount(),
      );

  Map<String, dynamic> toJson() => {
        'subtotal': subtotal,
        'shipping': shipping,
        'shipping_discount': shippingDiscount,
      };
}
