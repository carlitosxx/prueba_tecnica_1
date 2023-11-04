import 'package:flutter/material.dart';
import 'package:prueba_tecnica/presentation/splash/views/phone/splash_phone.view.dart';

/// Class main of splash page
class SplashPage extends StatelessWidget {
  /// This class is the one that derives the other views according to the type
  /// of device
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashPhoneView();
  }
}
