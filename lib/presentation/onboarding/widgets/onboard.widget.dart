import 'package:flutter/material.dart';
import 'package:prueba_tecnica/core/constants/assets.dart';
import 'package:prueba_tecnica/presentation/onboarding/models/onboard.model.dart';

/// Class onBoarding content
class OnboardingContent extends StatelessWidget {
  /// Widget onboard content
  const OnboardingContent({
    required this.onboard,
    super.key,
  });

  /// property onboard model;
  final Onboard onboard;

  ///
  // final double currentPage;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            if (onboard.backImage != null)
              Image.asset(onboard.backImage!)
            else
              const SizedBox.shrink(),
            if (onboard.isCloudAbove) const SizedBox.shrink(),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Image.asset(AssetsImages.logo2),
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Image.asset(
                      onboard.image,
                      width: MediaQuery.sizeOf(context).width * .65,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 56),
          child: Text(
            onboard.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            onboard.message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
