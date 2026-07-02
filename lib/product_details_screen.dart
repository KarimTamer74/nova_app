// product_details_screen.dart
import 'package:flutter/material.dart';
import 'package:nova_app/app_colors.dart';
import 'package:nova_app/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    required this.product,
    required this.priceAfterDiscount,
  });
  final ProductModel product;
  final double priceAfterDiscount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    product.image,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Color(0xffF3F4F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      Spacer(),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Color(0xffF3F4F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Color(0xffF3F4F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.share),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 18,
                ),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.brand,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      product.title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // * Spread Operator
                    Row(
                      children: [
                        ...List.generate(5, (index) {
                          int rating = product.rating.round();
                          return index < rating
                              ? Icon(Icons.star, color: Color(0xffFB923C))
                              : Icon(Icons.star_border, color: Colors.grey);
                        }),
                        SizedBox(width: 10),

                        Text(
                          product.rating.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '(${product.reviews.length} reviews)',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff9CA3AF),
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: '\$${priceAfterDiscount.toStringAsFixed(2)}  ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: '\$${product.price}  ',
                            style: TextStyle(
                              color: AppColors.greyClr,
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: 'Save \$${product.discount}',
                            style: TextStyle(
                              color: AppColors.greenClr,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      product.desc,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.greyDarkClr,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
