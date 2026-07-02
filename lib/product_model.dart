// product_model.dart
class ProductModel {
  final int id;
  final String title, brand, desc;
  final num price, rating, discount;
  final List<dynamic> reviews;
  final String image;
  final String? category;

  ProductModel({
    required this.id,
    required this.title,
    required this.brand,
    required this.price,
    required this.rating,
    required this.discount,
    required this.reviews,
    required this.image,
    required this.desc,
    this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      brand: json['brand'] ?? 'No Brand',
      price: json['price'],
      rating: json['rating'],
      discount: json['discountPercentage'],
      reviews: json['reviews'],
      image: json['thumbnail'],
      desc: json['description'],
    );
  }
}
