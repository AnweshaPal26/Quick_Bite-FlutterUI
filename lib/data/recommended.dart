import 'package:quick_byte/models/food.dart';

final List<Food> recommendedList = [
  const Food(name: "Burger", price: "\$5", image: "assets/images/burger.png"),
  // const Food(name: "Pizza", price: "\$8"),
  // const Food(name: "Pasta", price: "\$7"),
  const Food(name: "Salad", price: "\$4", image: "assets/images/salad.png"),
  const Food(name: "Ramen", price: "\$3", image: "assets/images/ramen.png"),
];

const options = ["All Foods", "Favourties", "Low calorie"];

final List<Food> allFoodList = [
  const Food(name: "Salad", price: "\$4.50", image: "assets/images/salad.png"),
  const Food(name: "Ramen", price: "\$3.20", image: "assets/images/ramen.png"),
  const Food(
    name: "Burger",
    price: "\$5.99",
    image: "assets/images/burger.png",
  ),
];
