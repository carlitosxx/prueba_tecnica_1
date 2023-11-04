import 'package:flutter/material.dart';

/// Class Widget Indicator
class DotIndicator extends StatelessWidget {
  /// Widget dot indicator of pageview
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  /// if isActive is true then the dot indicator change width size
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.bounceInOut,
      width: isActive ? 20 : 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.black26,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
