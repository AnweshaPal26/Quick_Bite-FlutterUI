import 'package:flutter/material.dart';
import 'package:quick_byte/widgets/address.dart';
import 'package:quick_byte/widgets/choice.dart';
import 'package:quick_byte/widgets/recommended_list.dart';
import 'package:quick_byte/widgets/search.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 40,
              start: 20,
              end: 20,
            ),
            child: Row(
              children: [
                Expanded(child: Address()),
                const SizedBox(width: 20),
                const Icon(Icons.shopping_cart_outlined),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Search box
          const Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Search(),
          ),
          const SizedBox(height: 15),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section title
                  const Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                    child: Text(
                      'Recommended for you',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Recommended list
                  Recommendedlist(),

                  const SizedBox(height: 15),

                  // Bottom container
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 130,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 13, 199, 116),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Left text section
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 20,
                              bottom: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Specials packs for families \n and large groups.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  "See offers ->",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Right image
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20,
                              bottom: 20,
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                'assets/images/burger.png',
                                height: 60,
                                width: 70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Choice(),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey, // border color
              width: 0.5, // thickness
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 0,
          selectedItemColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.green),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Orders'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
