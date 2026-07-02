// products_section.dart

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nova_app/product_model.dart';
import 'package:nova_app/products_grid_view.dart';

class ProductsSection extends StatefulWidget {
  const ProductsSection({super.key});

  @override
  State<ProductsSection> createState() => _ProductsSectionState();
}

class _ProductsSectionState extends State<ProductsSection> {
  List<ProductModel> products = [];

  Future<void> getProducts() async {
    final Dio dio = Dio();
    final response = await dio.get('https://dummyjson.com/products');

    for (var element in response.data['products']) {
      ProductModel product = ProductModel.fromJson(element);
      products.add(product);
    }
    // setState(() {});
    // log(products.length.toString());
  }

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print("$height, $width");
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2563EB),
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: ProductsGridView(products: products)),
        ],
      ),
    );
  }
}
