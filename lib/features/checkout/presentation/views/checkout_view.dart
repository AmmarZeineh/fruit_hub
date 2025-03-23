import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruits_hub/features/home/domain/entities/cart_entity.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntity});
  static const routeName = 'checkout';
  final CartEntity cartEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Provider.value(
              value: OrderInputEntity(cartEntity),
              child: const CheckoutViewBody())),
    );
  }
}
