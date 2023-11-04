import 'package:flutter/material.dart';
import 'package:prueba_tecnica/presentation/onboarding/views/phone/onboarding_phone.view.dart';

/// Class main of Onboarding page
class OnboardingPage extends StatelessWidget {
  /// This class is the one that derives the other views according to the type
  /// of device
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingPhoneView();
  }
}
