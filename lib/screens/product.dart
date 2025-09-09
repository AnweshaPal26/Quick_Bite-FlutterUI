import 'package:flutter/material.dart';
import 'package:quick_byte/models/food.dart';
import 'package:quick_byte/widgets/nutrition_card.dart';

class Product extends StatelessWidget {
  final Food food;
  const Product({required this.food, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Details'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(5),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              food.price,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Save',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  food.image,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  food.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Icon(Icons.favorite_outline),
              ],
            ),

            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 18),
                const SizedBox(width: 4),
                Text('4.6', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 4),
                Text(
                  '(203 Ratings)',
                  style: TextStyle(fontWeight: FontWeight.w100),
                ),
                const SizedBox(width: 4),
                Text('400 g'),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Nutrition',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NutritionCard(value: '287 Cal', label: 'Calories'),
                  NutritionCard(value: '26 g', label: 'Protein'),
                  NutritionCard(value: '19 g', label: 'Carbs'),
                  NutritionCard(value: '12 g', label: 'Fat'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Ingredients',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            Text(
              'Chicken, egg, lettuce, tomato,carrot etc',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
