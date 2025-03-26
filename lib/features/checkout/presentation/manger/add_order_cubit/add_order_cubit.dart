import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruits_hub/core/repos/orders_repo/order_repo.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.orderRepo) : super(AddOrderInitial());

  final OrderRepo orderRepo;

  Future<void> addOrder(OrderInputEntity orderInputEntity) async {
    emit(AddOrderLoading());
    final result = await orderRepo.createOrder(orderInputEntity);
    result.fold(
      (failure) {
        emit(AddOrderFailure(failure.message));
      },
      (success) {
        emit(AddOrderSuccess());
      },
    );
  }
}
