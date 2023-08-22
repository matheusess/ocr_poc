import 'package:flutter/material.dart';

class GlobalCloseButton extends StatefulWidget {
  final VoidCallback onPressed;
  const GlobalCloseButton({super.key, r, required this.onPressed});

  @override
  State<GlobalCloseButton> createState() => _GlobalCloseButtonState();
}

class _GlobalCloseButtonState extends State<GlobalCloseButton> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      child: IconButton(
        icon: const Icon(
          Icons.close_rounded,
          color: Colors.black,
          size: 18,
        ),
        onPressed: widget.onPressed,
      ),
    );
  }
}
