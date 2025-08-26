import 'package:flutter/material.dart';
import 'package:quick_byte/widgets/address.dart';
import 'package:quick_byte/widgets/recommended_list.dart';
import 'package:quick_byte/widgets/search.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Address()),
                SizedBox(width: 20),
                Icon(Icons.card_travel),
              ],
            ),
            const SizedBox(height: 10),
            Search(),
            const SizedBox(height: 15),
            Text(
              'Recommended for you',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            Recommendedlist(),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 13, 199, 116),
                borderRadius: BorderRadius.circular(10),
              ),
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
