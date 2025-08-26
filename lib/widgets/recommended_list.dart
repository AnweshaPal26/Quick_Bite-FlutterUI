import 'package:flutter/material.dart';
import 'package:quick_byte/data/recommended.dart';

class Recommendedlist extends StatelessWidget {
  const Recommendedlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendedList.length,
        itemBuilder: (context, index) {
          final food = recommendedList[index];
          return Container(
            width: 150,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: BoxBorder.all(
                color: const Color.fromARGB(255, 224, 220, 220),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 238, 238, 238),
                      ),
                      child: Image.asset(
                        food.image,
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(food.name, style: const TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      Text(food.price, style: const TextStyle(fontSize: 13)),
                      Spacer(),

                      InkWell(
                        onTap: () {
                          print("object");
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 13, 199, 116),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(Icons.add, color: Colors.white, size: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
