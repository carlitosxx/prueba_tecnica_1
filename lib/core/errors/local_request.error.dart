import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_request.error.freezed.dart';

/// This class helps to categorize the failure
@freezed
class LocalRequestFailure with _$LocalRequestFailure {
  /// Local failure not available
  factory LocalRequestFailure.notAvailable() = _NotAvailable;

  /// Local failure gps not enabled
  factory LocalRequestFailure.gpsNotEnabled() = _GpsNotEnabled;

  /// Local failure gps not has permission
  factory LocalRequestFailure.gpsNotPermission() = _GpsNotPermission;

  /// Local failure unknown
  factory LocalRequestFailure.failureUnknown() = _FailureUnknown;
}
