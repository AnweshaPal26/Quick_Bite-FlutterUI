import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.all(color: const Color.fromARGB(255, 224, 220, 220)),
        borderRadius: BorderRadius.circular(10),
      ),

      height: 50,
      child: Padding(
        padding: EdgeInsetsGeometry.all(5),
        child: Row(
          children: [
            const Icon(Icons.place),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pickup at",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Route 66 Grill house",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 152, 149, 149),
                  ),
                ),
              ],
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                'Edit',
                style: TextStyle(color: Color.fromARGB(255, 13, 199, 116)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
