import 'package:bloc/bloc.dart';
import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/features/home/domain/entities/cart_entity.dart';
import 'package:fruits_hub/features/home/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntity cartEntity = CartEntity(items: []);
  addItem(ProductEntity productEntity) {
    bool isProductExist = cartEntity.isExists(productEntity);
    var cartItem = cartEntity.getCarItem(productEntity);
    if (isProductExist) {
      cartItem.increaseQuantity();
    } else {
      cartEntity.addCartItem(cartItem);
    }
    emit(CartItemAdded());
  }

  removeItem(CartItemEntity cartItemEntity) {
    cartEntity.items.remove(cartItemEntity);
    emit(CartItemRemoved());
  }
}
