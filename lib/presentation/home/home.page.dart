import 'package:flutter/material.dart';
import 'package:prueba_tecnica/presentation/home/views/phone/home_phone.view.dart';

/// Class main of Home page
class HomePage extends StatelessWidget {
  /// This class is the one that derives the other views according to the type
  /// of device
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePhoneView();
  }
}
