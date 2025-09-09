import 'package:flutter/material.dart';
import 'package:quick_byte/data/recommended.dart';
import 'package:quick_byte/screens/product.dart';

class AllFoodList extends StatelessWidget {
  const AllFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: allFoodList.length,
      itemBuilder: (ctx, index) {
        final foods = allFoodList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (ctx) => Product(food: foods)),
            );
          },
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 0.5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    foods.image,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(foods.name),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 17),
                        Text("4.7", style: TextStyle(fontSize: 10)),
                        const SizedBox(width: 10),
                        Text("124 Cal", style: TextStyle(fontSize: 10)),
                      ],
                    ),
                    SizedBox(width: 10),
                    Text(foods.price),
                  ],
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    print("object");
                  },
                  child: Container(
                    padding: EdgeInsetsDirectional.only(
                      top: 5,
                      bottom: 5,
                      start: 10,
                      end: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 13, 199, 116),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text("Add", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (ctx, index) => const SizedBox(height: 12),
    );
  }
}
