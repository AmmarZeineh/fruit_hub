import 'package:fruits_hub/features/checkout/domain/entities/shipping_address_entity.dart';

class ShippingAddressModel {
  String? name;
  String? phone;
  String? address;
  String? city;
  String? email;
  String? floor;

  ShippingAddressModel({
    this.name,
    this.phone,
    this.address,
    this.floor,
    this.city,
    this.email,
  });

  factory ShippingAddressModel.fromEntity(
      ShippingAddressEntity shippingAddressEntity) {
    return ShippingAddressModel(
      name: shippingAddressEntity.name,
      phone: shippingAddressEntity.phone,
      address: shippingAddressEntity.address,
      floor: shippingAddressEntity.floor,
      city: shippingAddressEntity.city,
      email: shippingAddressEntity.email,
    );
  }

  @override
  String toString() {
    return '$address $city $floor';
  }

  toJson() {
    return {
      'name': name,
      'phone': phone,
      'address': address,
      'floor': floor,
      'city': city,
      'email': email,
    };
  }
}
