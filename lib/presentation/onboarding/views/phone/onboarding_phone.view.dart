import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba_tecnica/core/constants/assets.dart';
import 'package:prueba_tecnica/core/routes/routes.dart';
import 'package:prueba_tecnica/presentation/onboarding/models/onboard.model.dart';
import 'package:prueba_tecnica/presentation/onboarding/onboarding.i18n.dart';
import 'package:prueba_tecnica/presentation/onboarding/providers/page_controller.provider.dart';
import 'package:prueba_tecnica/presentation/onboarding/widgets/dot_indicator.widget.dart';
import 'package:prueba_tecnica/presentation/onboarding/widgets/onboard.widget.dart';

/// class Onboarding Phone view
class OnboardingPhoneView extends ConsumerStatefulWidget {
  /// set of screens that are shown to the user when opening an application
  /// for the first time. (phone view)
  const OnboardingPhoneView({super.key});

  @override
  OnboardingPhoneViewState createState() => OnboardingPhoneViewState();
}

/// Onboarding viewstate (phone)
class OnboardingPhoneViewState extends ConsumerState<OnboardingPhoneView> {
  late PageController _pageController;

  /// Color background of scaffold with initial value
  Color backgroundColorScaffold = const Color(0xffF4B5BA);

  /// Current page in type data double, from 0.0 to 2.0(3 pages)
  double currentPage = 0;

  void _updatePageInDouble() {
    ref
        .read(currentPageProvider.notifier)
        .update((state) => _pageController.page!);
  }

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
    _pageController.addListener(_updatePageInDouble);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentPageState = ref.watch(currentPageProvider);
    final pageIndexState = ref.watch(pageIndexProvider);

    final listOnboard = [
      Onboard(
        title: title1Onboarding.i18n,
        message: message1Onboarding.i18n,
        image: AssetsImages.monster1,
        backImage: AssetsImages.wave,
        isCloudAbove: false,
      ),
      Onboard(
        title: title2Onboarding.i18n,
        message: message2Onboarding.i18n,
        image: AssetsImages.monster2,
        isCloudAbove: true,
      ),
      Onboard(
        title: title3Onboarding.i18n,
        message: message3Onboarding.i18n,
        image: AssetsImages.monster3,
        backImage: AssetsImages.route1,
        isCloudAbove: true,
      ),
    ];

    return Scaffold(
      backgroundColor: backgroundColorScaffold,
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 90,
              child: Stack(
                children: [
                  Positioned(
                    left: (currentPageState * 50) + 200,
                    top: 10,
                    child: Image.asset(
                      AssetsImages.cloud2,
                      height: 100,
                      width: 260,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: (currentPageState * 150) + 50,
                    top: 80,
                    child: Image.asset(
                      AssetsImages.cloud2,
                      width: 100,
                    ),
                  ),
                  PageView.builder(
                    controller: _pageController,
                    itemCount: listOnboard.length,
                    onPageChanged: (index) {
                      ref
                          .read(pageIndexProvider.notifier)
                          .update((state) => index);
                    },
                    itemBuilder: (context, index) {
                      if (currentPageState <= 1) {
                        backgroundColorScaffold = Color.lerp(
                          const Color(0xffF4B5BA),
                          const Color(0xFFBFDFE6),
                          currentPageState,
                        )!;
                      } else {
                        final value = currentPageState - 1;
                        backgroundColorScaffold = Color.lerp(
                          const Color(0xFFBFDFE6),
                          const Color(0xFFF6E5A5),
                          value,
                        )!;
                      }
                      return OnboardingContent(
                        onboard: listOnboard[index],
                      );
                    },
                  ),
                  Positioned(
                    left: currentPageState * 115,
                    top: 240,
                    child: Image.asset(AssetsImages.cloud3),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 10,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          listOnboard.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: DotIndicator(
                              isActive: index == pageIndexState,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_pageController.page == 2) {
                            ref
                                .read(appRouterProvider)
                                .pushReplacementNamed('home');
                          }
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          padding: EdgeInsets.zero,
                          shape: const CircleBorder(),
                          fixedSize: const Size(60, 60),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 32,
                          weight: 100,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
