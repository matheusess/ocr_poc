import 'package:flutter/material.dart';
import 'package:ocr_poc/global/global_colors.dart';

import 'new_grocery_header_widget.dart';
import 'new_grocery_shopping_name_widget.dart';
import '../new_grocery_item/new_grocery_image_field.dart';

class NewGroceryScreen extends StatefulWidget {
  const NewGroceryScreen({super.key});

  @override
  State<NewGroceryScreen> createState() => _NewGroceryScreenState();
}

class _NewGroceryScreenState extends State<NewGroceryScreen> {
  final GlobalColorsLibrary color = GlobalColorsLibrary();
  final SizedBox _v_space = const SizedBox(height: 38);
  final SizedBox _v_space2 = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _v_space,
            const NewGroceryHeaderWidget(),
            _v_space2,
            const NewGroceryShoppingNameWidget(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(
          context,
        ),
        backgroundColor: color.purple,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
