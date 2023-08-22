import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ocr_poc/global/global_colors.dart';

class NewGroceryHeaderWidget extends StatefulWidget {
  const NewGroceryHeaderWidget({super.key});

  @override
  State<NewGroceryHeaderWidget> createState() => _NewGroceryHeaderWidgetState();
}

class _NewGroceryHeaderWidgetState extends State<NewGroceryHeaderWidget> {
  GlobalColorsLibrary color = GlobalColorsLibrary();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nova Compra',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: color.green,
              fontWeight: FontWeight.w700,
              fontSize: 34,
            ),
          ),
        ),
        Row(
          children: [
            Text(
              DateFormat('d', 'pt-BR').format(DateTime.now()).toString(),
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: color.darkGrey,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              ' de ',
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: color.darkGrey,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              DateFormat('MMMM, ', 'pt-BR').format(DateTime.now()).toString(),
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: color.darkGrey,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              DateFormat('yyyy', 'pt-BR').format(DateTime.now()).toString(),
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: color.darkGrey,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
