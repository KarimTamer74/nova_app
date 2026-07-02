// products_grid_view.dart
import 'package:flutter/material.dart';
import 'package:nova_app/product_details_screen.dart';
import 'package:nova_app/product_model.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.products});
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .58,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        double priceAfterDiscount =
            products[index].price -
            (products[index].price *
                (products[index].discount / 100));
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ProductDetailsScreen(product: products[index],priceAfterDiscount: priceAfterDiscount,),
              ),
            );
          },
          child: Card(
            child: Column(
              children: [
                Image.network(products[index].brand, height: 150),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products[index].brand ,
                        style: TextStyle(fontSize: 9),
                      ),
                      Text(
                        products[index].title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Icon(Icons.star, color: Colors.orange),
                          Text(products[index].rating.toString()),
                        ],
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            '\$${priceAfterDiscount.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$${products[index].price}',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
