import 'package:fruits_hub/core/entities/product_entity.dart';
import 'package:fruits_hub/core/helper_functions/get_avg_rating.dart';
import 'package:fruits_hub/core/models/review_model.dart';

class ProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final bool isFeatured;
  String? imageUrl;
  final int expirationsMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final num avgRating;
  final num ratingCount;
  final int unitAmount;
  final int sellingCount;
  final List<ReviewModel> reviews;
  ProductModel({
    this.ratingCount = 0,
    required this.avgRating,
    required this.name,
    required this.code,
    required this.description,
    required this.expirationsMonths,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.reviews,
    required this.price,
    required this.sellingCount,
    required this.isOrganic,
    required this.isFeatured,
    this.imageUrl,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      code: json['code'],
      description: json['description'],
      expirationsMonths: json['expirationsMonths'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      reviews: List<ReviewModel>.from(
          json['reviews'].map((e) => ReviewModel.fromJson(e))),
      price: json['price'],
      sellingCount: json['sellingCount'],
      isOrganic: json['isOrganic'],
      isFeatured: json['isFeatured'],
      imageUrl: json['imageUrl'],
      avgRating: getAvgRating(json['reviews']),
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      avgRating: avgRating,
      name: name,
      code: code,
      description: description,
      expirationsMonths: expirationsMonths,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      reviews: reviews.map((e) => e.toEntity()).toList(),
      price: price,
      isOrganic: isOrganic,
      isFeatured: isFeatured,
      imageUrl: imageUrl,
    );
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'sellingCount': sellingCount,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationsMonths': expirationsMonths,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }
}
