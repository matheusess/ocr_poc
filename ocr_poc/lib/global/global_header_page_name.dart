import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ocr_poc/global/global_colors.dart';

class GlobalHeaderPageNameWidget extends StatefulWidget {
  final String pageName;
  final String pageDescription;
  const GlobalHeaderPageNameWidget(
      {super.key, required this.pageName, required this.pageDescription});

  @override
  State<GlobalHeaderPageNameWidget> createState() =>
      _GlobalHeaderPageNameWidgetState();
}

class _GlobalHeaderPageNameWidgetState
    extends State<GlobalHeaderPageNameWidget> {
  GlobalColorsLibrary color = GlobalColorsLibrary();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.pageName,
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                  color: color.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Text(
                  widget.pageDescription,
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                      color: color.darkGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
