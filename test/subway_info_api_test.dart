import 'package:flutter_test/flutter_test.dart';
import 'package:subway_info_app/data/data_source/subway_info_api.dart';

void main() {
  test('SubwayInfoApi Http 테스트', () async {
    final api = SubwayApi();

    final result = await api.getSubwayInfoList('서울');
    
    expect(result, isNotNull);
  });
}