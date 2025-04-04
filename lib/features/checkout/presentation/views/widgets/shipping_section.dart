import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/shipping_item.dart';
import 'package:provider/provider.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      children: [
        const SizedBox(
          height: 33,
        ),
        ShippingItem(
          onTap: () {
            context.read<OrderInputEntity>().payWithCash = true;
            selectedIndex = 0;
            setState(() {});
          },
          isSelected: selectedIndex == 0,
          title: 'الدفع عند الاستلام',
          subTitle: 'التسليم من المكان',
          price: (context
                      .read<OrderInputEntity>()
                      .cartEntity
                      .calculateTotalPrice() +
                  30)
              .toString(),
        ),
        const SizedBox(
          height: 16,
        ),
        ShippingItem(
            onTap: () {
              context.read<OrderInputEntity>().payWithCash = false;
              selectedIndex = 1;
              setState(() {});
            },
            isSelected: selectedIndex == 1,
            title: 'الدفع اونلاين',
            subTitle: 'يرجي تحديد طريقه الدفع',
            price: context
                .read<OrderInputEntity>()
                .cartEntity
                .calculateTotalPrice()
                .toString()),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
