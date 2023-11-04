import 'package:i18n_extension/i18n_extension.dart';

/// ===OnBoarding page===

/// Constant:1th title of onboarding
const title1Onboarding = 'title1Onboarding';

/// Constant:1th message of onboarding
const message1Onboarding = 'message1Onboarding';

/// Constant:2th title of onboarding
const title2Onboarding = 'title2Onboarding';

/// Constant:2th message of onboarding
const message2Onboarding = 'message2Onboarding';

/// Constant:3th title of onboarding
const title3Onboarding = 'title3Onboarding';

/// Constant:3th message of onboarding
const message3Onboarding = 'message3Onboarding';

/// Cadenas de traduccion
extension OnBoardingStrings on String {
  static const _t = Translations.from(
    'en_us',
    {
      title1Onboarding: {
        'en_us': 'Audio stories with top-level production',
        'es_es': 'Audiocuentos con producción de primer nivel',
      },
      message1Onboarding: {
        'en_us': 'Original music, sound effects and expert voices'
            ' to make your imagination fly',
        'es_es': 'Música original, efectos de sonido y voces expertas'
            ' para hacer volar la imaginación',
      },
      title2Onboarding: {
        'en_us': 'Stories endorsed by psychologists',
        'es_es': 'Historias avaladas por psicólogos',
      },
      message2Onboarding: {
        'en_us': 'Audio stories, podcasts and meditations'
            ' based on positive discipline',
        'es_es': 'Audiocuentos, podcast y meditaciones'
            ' basados en disciplina positivo',
      },
      title3Onboarding: {
        'en_us': 'Personalized learning paths',
        'es_es': 'Rutas personalizadas de aprendizaje',
      },
      message3Onboarding: {
        'en_us': 'Personalize the most important challenges'
            ' for your child and reproduce story routes',
        'es_es': 'personaliza los desafios más importantes'
            ' para tu hijo y reproduce rutas de cuento',
      },
    },
  );

  /// Getter to translate the string
  String get i18n => localize(this, _t);

  /// Method for interpolating strings
  String fill(List<Object> params) => localizeFill(this, params);

  /// Method for pluralizing strings
  String plural(int value) => localizePlural(value, this, _t);

  /// Method for creating custom modifiers according to any conditions
  String version(Object modifier) => localizeVersion(modifier, this, _t);

  /// Method for retrieving all the custom modifiers
  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}
