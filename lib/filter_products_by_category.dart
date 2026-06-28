// filter_products_by_category.dart
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nova_app/products_grid_view.dart';

class FilterProductsByCategory extends StatefulWidget {
  const FilterProductsByCategory({super.key, required this.catName});
  final String catName;
  @override
  State<FilterProductsByCategory> createState() =>
      _FilterProductsByCategoryState();
}

class _FilterProductsByCategoryState extends State<FilterProductsByCategory> {
  List products = [];
  Future<void> getProductsByCat() async {
    final Dio dio = Dio();
    final response = await dio.get(
      'https://dummyjson.com/products/category/${widget.catName}',
    );
    products = response.data['products'];

    setState(() {});
    log(products.length.toString());
  }

  @override
  void initState() {
    super.initState();
    getProductsByCat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          widget.catName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ProductsGridView(products: products),
    );
  }
}
