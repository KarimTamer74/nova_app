// home_screen.dart

import 'package:flutter/material.dart';
import 'package:nova_app/categories_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://st.perplexity.ai/estatic/0b226c450798410ac541646c86ec31afd840e5beab817a5d84fa821e7db61981ec84c3b4a3f072a7a2e1899c9fb06c6ef358fd28a57106d6cbb8a3f176094de15ff25ad5ad0c4f2b74f1275d31070fe97659b1875c568c9fb83d6b3c6eedc4d100bfc852194fad5af455cb468265021c',
              ),
            ),
          ),
        ],
        title: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good morning 👋",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            RichText(
              text: const TextSpan(
                text: 'NOVA',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2563EB),
                ),
                children: [
                  TextSpan(
                    text: ' Store',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF9FAFB),
                  hintText: 'Search phones, laptops, more...',
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),

                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              CategoriesSection(),
            ],
          ),
        ),
      ),
    );
  }
}
