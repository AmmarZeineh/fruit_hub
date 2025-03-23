import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/shipping_address_widget.dart';

import 'order_summry_widget.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 24,
        ),
        OrderSummryWidget(),
        SizedBox(
          height: 16,
        ),
        ShippingAddressWidget(),
      ],
    );
  }
}
