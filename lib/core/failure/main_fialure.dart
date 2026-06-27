import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_fialure.freezed.dart';

@freezed
abstract class MainFailure with _$MainFailure {
  const factory MainFailure.serverFailure({required String message}) =
      ServerFailure;

  const factory MainFailure.clientFailure({required String message}) =
      ClientFailure;
}
