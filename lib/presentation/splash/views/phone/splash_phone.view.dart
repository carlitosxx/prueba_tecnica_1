import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba_tecnica/core/constants/assets.dart';
import 'package:prueba_tecnica/core/routes/routes.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:prueba_tecnica/presentation/splash/providers/change_languaje.provider.dart';
// import 'package:prueba_tecnica/presentation/splash/splash.i18n.dart';

/// class Splash Phone view
class SplashPhoneView extends ConsumerWidget {
  /// This view is used to load previous information (phone view)
  const SplashPhoneView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // const assetLogo = 'assets/Logo01.png';
    // const assetCloud1 = 'assets/Cloud01.png';
    // const assetCloud2 = 'assets/Cloud02.png';
    // const assetCloud3 = 'assets/Cloud03(1).png';
    return Scaffold(
      backgroundColor: const Color(0xff3982F7),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsImages.logo),
                ElevatedButton(
                  onPressed: () {
                    ref.read(appRouterProvider).pushNamed('onboarding');
                  },
                  child: const Text('siguiente'),
                ),
              ],
            ),
          ),
          Positioned(
            left: -20,
            top: 120,
            child: Image.asset(AssetsImages.cloud2),
          ),
          Positioned(
            right: 70,
            top: MediaQuery.of(context).size.height / 2 - 80,
            child: Image.asset(AssetsImages.cloud3),
          ),
          Positioned(
            left: 5,
            bottom: MediaQuery.of(context).size.height / 2 - 120,
            child: Image.asset(AssetsImages.cloud2),
          ),
          Positioned(
            right: 0,
            bottom: 100,
            child: Image.asset(AssetsImages.cloud1),
          ),
        ],
      ),
    );
  }
}
