import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'subway_info.freezed.dart';

part 'subway_info.g.dart';

@freezed
class SubwayInfo with _$SubwayInfo {
  const factory SubwayInfo({
    @Default('') required String updnLine,
    @Default('') required String statnNm,
    @Default('') required String trainLineNm,
    @Default('') required String arvlMsg2,
    @Default('') required String arvlMsg3,
    @Default('') required String trnsitCo,
    @Default('') required String barvlDt,
  }) = _SubwayInfo;

  factory SubwayInfo.fromJson(Map<String, Object?> json) =>
      _$SubwayInfoFromJson(json);
}
