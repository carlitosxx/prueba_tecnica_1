import 'package:prueba_tecnica/domain/repositories/configuration.repository.dart';

/// class save language use case
class SaveLanguageUC {
  /// Constructor for initializing the 'SaveLanguageUC' class with an
  /// configRepository' parameter, which is used to interact with
  /// configuration-related data.
  SaveLanguageUC(this.iConfigRepository);

  /// An interface representing the repository for configuration-related
  /// operations, providing access to data and functionality required
  IConfigRepository iConfigRepository;

  /// Invokes the use case to save the language. Returns a
  /// 'FailureOrSaveSuccessLanguage' result obtained from 'configRepository'.
  FailureOrSaveSuccessLanguage call({
    required String languageCode,
    required String countryCode,
  }) {
    return iConfigRepository.saveLanguage(languageCode, countryCode);
  }
}
