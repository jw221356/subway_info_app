import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:subway_info_app/data/model/subway_info.dart';

class SubwayApi {
  Future<SubwayInfo> getSubwayInfoList(String query) async {
    final response = await http.get(Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$query'));
    return SubwayInfo.fromJson(jsonDecode(response.body));
  }
}