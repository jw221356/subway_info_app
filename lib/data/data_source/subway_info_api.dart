import 'dart:convert';

import 'package:http/http.dart' as http;


class SubwayApi {
  Future<List<dynamic>> getSubwayInfoList(String query) async {
    final response = await http.get(Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$query'));
    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final realtimeList = data['realtimeArrivalList'] as List<dynamic>;
    return realtimeList;
  }
}