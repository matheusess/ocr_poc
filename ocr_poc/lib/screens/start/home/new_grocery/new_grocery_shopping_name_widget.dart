import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ocr_poc/global/global_colors.dart';

class NewGroceryShoppingNameWidget extends StatefulWidget {
  const NewGroceryShoppingNameWidget({super.key});

  @override
  State<NewGroceryShoppingNameWidget> createState() =>
      _NewGroceryShoppingNameWidgetState();
}

class _NewGroceryShoppingNameWidgetState
    extends State<NewGroceryShoppingNameWidget> {
  GlobalColorsLibrary color = GlobalColorsLibrary();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 9,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(Icons.add_location_alt_outlined),
              Text(
                'Local da compra',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: color.blue,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          TextFormField(),
        ],
      ),
    );
  }
}
