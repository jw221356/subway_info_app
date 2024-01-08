// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subway_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubwayInfoImpl _$$SubwayInfoImplFromJson(Map<String, dynamic> json) =>
    _$SubwayInfoImpl(
      subwayId: json['subwayId'] as String?,
      updnLine: json['updnLine'] as String?,
      statnNm: json['statnNm'] as String?,
      trainLineNm: json['trainLineNm'] as String?,
      arvlMsg2: json['arvlMsg2'] as String?,
      arvlMsg3: json['arvlMsg3'] as String?,
      trnsitCo: json['trnsitCo'] as String?,
      barvlDt: json['barvlDt'] as String?,
      arvlCd: json['arvlCd'] as String?,
    );

Map<String, dynamic> _$$SubwayInfoImplToJson(_$SubwayInfoImpl instance) =>
    <String, dynamic>{
      'subwayId': instance.subwayId,
      'updnLine': instance.updnLine,
      'statnNm': instance.statnNm,
      'trainLineNm': instance.trainLineNm,
      'arvlMsg2': instance.arvlMsg2,
      'arvlMsg3': instance.arvlMsg3,
      'trnsitCo': instance.trnsitCo,
      'barvlDt': instance.barvlDt,
      'arvlCd': instance.arvlCd,
    };
