import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_font_styles.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:provider/provider.dart';

import 'payment_item.dart';

class OrderSummryWidget extends StatelessWidget {
  const OrderSummryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      tile: 'ملخص الطلب',
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'المجموع الفرعي :',
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
              const Spacer(),
              Text(
                '${context.read<OrderInputEntity>().cartEntity.calculateTotalPrice()} جنيه',
                textAlign: TextAlign.right,
                style: TextStyles.semiBold16,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                'التوصيل  :',
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
              const Spacer(),
              Text(
                '30 جنيه',
                textAlign: TextAlign.right,
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          const Divider(
            thickness: .5,
            color: Color(0xFFCACECE),
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            children: [
              const Text(
                'الكلي',
                style: TextStyles.bold16,
              ),
              const Spacer(),
              Text(
                '${context.read<OrderInputEntity>().cartEntity.calculateTotalPrice() + 30} جنيه',
                style: TextStyles.bold16,
              )
            ],
          ),
        ],
      ),
    );
  }
}
