import 'package:flutter/material.dart';
import 'package:quick_byte/data/recommended.dart';

class Choice extends StatefulWidget {
  const Choice({super.key});

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Wrap(
        spacing: 8,
        children: List<Widget>.generate(options.length, (int index) {
          final isSelected = selectedIndex == index;
          return ChoiceChip(
            label: Text(options[index]),
            selected: isSelected,
            selectedColor: Colors.green.shade100,
            shape: StadiumBorder(
              side: BorderSide(
                color: isSelected ? Colors.green : Colors.grey.shade300,
                width: 2,
              ),
            ),
            onSelected: (bool selected) {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        }),
      ),
    );
  }
}
