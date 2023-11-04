import 'package:i18n_extension/i18n_extension.dart';

/// ===Splash page===
/// Constante: Marca
const kBrand = 'kBrand';

/// Cadenas de traduccion
extension SplashStrings on String {
  static const _t = Translations.from('en_us', {
    /// brand
    kBrand: {
      'en_us': 'Prueba_en',
      'es_es': 'Prueba_es',
    },
  });

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
