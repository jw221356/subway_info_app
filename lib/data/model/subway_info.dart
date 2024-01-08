import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'subway_info.freezed.dart';

part 'subway_info.g.dart';

@freezed
class SubwayInfo with _$SubwayInfo {
  const factory SubwayInfo({
    required String? updnLine, // 상하행 구분
    required String? statnNm, // 지하철역명
    required String? trainLineNm, // 도착지 방면
    required String? arvlMsg2, // 도착,출발 진입 등
    required String? arvlMsg3, // oo도착, 12분후 oo
    required String? trnsitCo, // 환승 노선
    required String? barvlDt, // 도착 예정 시간
  }) = _SubwayInfo;

  factory SubwayInfo.fromJson(Map<String, Object?> json) =>
      _$SubwayInfoFromJson(json);
}
