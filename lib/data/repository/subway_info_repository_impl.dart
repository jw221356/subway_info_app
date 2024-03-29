import 'package:subway_info_app/data/data_source/subway_info_api.dart';
import 'package:subway_info_app/data/model/subway_info.dart';
import 'package:subway_info_app/data/repository/subway_info_repository.dart';

class SubwayInfoImpl implements SubwayInfoRepository {
  final SubwayApi _subwayApi;

  SubwayInfoImpl(this._subwayApi);

  @override
  Future<List<SubwayInfo>> getSubwayInfoList(String query) async {
    try {
      final response = await _subwayApi.getSubwayInfoList(query);
      return response.map((e) => SubwayInfo.fromJson(e)).toList();
    } catch (e) {
      throw Exception('subway info');
    }
  }
}