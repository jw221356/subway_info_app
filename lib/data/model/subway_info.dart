import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'subway_info.freezed.dart';

part 'subway_info.g.dart';

@freezed
class SubwayInfo with _$SubwayInfo {
  const factory SubwayInfo({
    required String? subwayId, // (1001:1호선, 1002:2호선, 1003:3호선, 1004:4호선, 1005:5호선 1006:6호선, 1007:7호선, 1008:8호선, 1009:9호선, 1061:중앙선1063:경의중앙선, 1065:공항철도, 1067:경춘선, 1075:수의분당선 1077:신분당선, 1092:우이신설선, 1093:서해선, 1081:경강선)
    required String? updnLine, // 상하행 구분
    required String? statnNm, // 지하철역명
    required String? trainLineNm, // 도착지 방면
    required String? arvlMsg2, // 도착,출발 진입 등
    required String? arvlMsg3, // oo도착, 12분후 oo
    required String? trnsitCo, // 환승 노선
    required String? barvlDt, // 도착 예정 시간
    required String? arvlCd, // 0:진입, 1:도착, 2:출발, 3:전역출발, 4:전역진입, 5:전역도착, 99:운행중
  }) = _SubwayInfo;

  factory SubwayInfo.fromJson(Map<String, Object?> json) =>
      _$SubwayInfoFromJson(json);
}
