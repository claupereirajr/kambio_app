import 'package:flutter/material.dart';

class SwapButton extends StatelessWidget {
  final VoidCallback onTap;

  const SwapButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.swap_vert, color: Colors.white, size: 28),
      ),
    );
  }
}
