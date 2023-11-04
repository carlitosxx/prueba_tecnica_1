import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/map_failure_to_string.util.dart';
part 'load_language.state.freezed.dart';

@freezed
abstract class LoadLanguageState with _$LoadLanguageState {
  /// Data is present state
  const factory LoadLanguageState.data({required List<String>? language}) =
      _Data;

  /// Initial/default state
  const factory LoadLanguageState.initial() = _Initial;

  /// Data is loading state
  const factory LoadLanguageState.loading() = _Loading;

  /// Error when loading data state
  const factory LoadLanguageState.error(ErrorMapping error) = _Error;
}
