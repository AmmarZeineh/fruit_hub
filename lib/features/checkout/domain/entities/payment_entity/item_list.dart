import 'package:fruits_hub/features/home/domain/entities/cart_item_entity.dart';

import 'item.dart';

class ItemList {
  List<Item>? items;

  ItemList({this.items});

  factory ItemList.fromEntity(List<CartItemEntity> entities) {
    return ItemList(
      items: entities.map((e) => Item.fromEntity(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
