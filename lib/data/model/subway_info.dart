import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'subway_info.freezed.dart';

part 'subway_info.g.dart';

@freezed
class SubwayInfo with _$SubwayInfo {
  const factory SubwayInfo({
    required String? updnLine,
    required String? statnNm,
    required String? trainLineNm,
    required String? arvlMsg2,
    required String? arvlMsg3,
    required String? trnsitCo,
    required String? barvlDt,
  }) = _SubwayInfo;

  factory SubwayInfo.fromJson(Map<String, Object?> json) =>
      _$SubwayInfoFromJson(json);
}
