import 'package:flutter/material.dart';

Color LineColor(String? subwayId) {
  Map<String, Color> subwayLineColors ={
    '1001': Colors.blue, // 1호선
    '1002': Colors.green, // 2호선
    '1003': Colors.orange, // 3호선
    '1004': Colors.blueAccent, // 4호선
    '1005': Colors.purple, // 5호선
    '1006': Color(0xffCD7C2F), // 6호선
    '1007': Color(0xff747F00), // 7호선
    '1008': Colors.blue, // 8호선
    '1009': Colors.blue, // 9호선
    '1061': Colors.blue, // 중앙선
    '1063': Colors.blue, // 경의중앙
    '1065': Colors.blue, // 공항철도
    '1067': Colors.blue, // 경춘선
    '1075': Colors.blue, // 수인분당
    '1077': Colors.blue, // 신분당
    '1077': Colors.blue, // 우이신설
  };
  return subwayLineColors[subwayId] ?? Colors.grey;
}