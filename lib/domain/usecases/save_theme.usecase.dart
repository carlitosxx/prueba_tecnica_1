import 'package:prueba_tecnica/domain/repositories/configuration.repository.dart';

/// class save theme use case
class SaveThemeUC {
  /// Constructor for initializing the 'SaveThemeUC' class with an
  /// configRepository' parameter, which is used to interact with
  /// configuration-related data.
  SaveThemeUC(this.iConfigRepository);

  /// An interface representing the repository for configuration-related
  /// operations, providing access to data and functionality required
  IConfigRepository iConfigRepository;

  /// Invokes the use case to save the theme. Returns a
  /// 'FailureOrSaveSuccessTheme' result obtained from 'configRepository'.
  FailureOrSaveSuccessTheme call({
    required bool isDark,
  }) {
    return iConfigRepository.saveTheme(isDark: isDark);
  }
}
