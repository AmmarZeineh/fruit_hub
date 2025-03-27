import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';

import 'amount.dart';
import 'item_list.dart';

class PaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaymentEntity({this.amount, this.description, this.itemList});

  factory PaymentEntity.fromEntity(OrderInputEntity entity) {
    return PaymentEntity(
      amount: Amount.fromEntity(entity),
      description: 'Payment with PayPal',
      itemList: ItemList.fromEntity(entity.cartEntity.items),
    );
  }

  Map<String, dynamic> toJson() => {
        'amount': amount?.toJson(),
        'description': description,
        'item_list': itemList?.toJson(),
      };
}
