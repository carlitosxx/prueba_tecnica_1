import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prueba_tecnica/core/routes/routes.dart';
import 'package:prueba_tecnica/core/theme/color_scheme.dart';
import 'package:prueba_tecnica/presentation/splash/providers/change_languaje.provider.dart';

/// Class aplication
class MyApp extends ConsumerWidget {
  /// application configuration class
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final localLanguage = ref.watch(localLanguageProvider);

    const title = 'Prueba';
    return MaterialApp.router(
      locale: localLanguage,
      title: title,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
      ],
    );
  }
}
