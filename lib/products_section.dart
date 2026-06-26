// products_section.dart

import 'package:flutter/material.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
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
          Expanded(
            child: GridView.builder(
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .58,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.network(
                        'https://d2u1z1lopyfwlx.cloudfront.net/thumbnails/fb75ddde-1b80-5d2b-8a5a-891b1136df4c/c7c301e6-fde2-5f81-aa42-1c3a30c8e606.jpg',
                        height: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          spacing: 5,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ESSENCE', style: TextStyle(fontSize: 9)),
                            Text(
                              'Essence Mascara Lash Princess',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              spacing: 10,
                              children: [
                                Icon(Icons.star, color: Colors.orange),
                                Text('2.6'),
                              ],
                            ),
                            Row(
                              spacing: 10,
                              children: [
                                Text(
                                  '\$8.94',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$9.99',
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
