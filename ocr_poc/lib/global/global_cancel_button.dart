import 'package:flutter/material.dart';

class GlobalCancelButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const GlobalCancelButton({
    required this.child,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1.5,
          color: Color.fromARGB(221, 255, 255, 255),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
