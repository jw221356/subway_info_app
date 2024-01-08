import 'package:subway_info_app/data/model/subway_info.dart';


abstract interface class SubwayInfoRepository {
  Future<SubwayInfo> getSubwayInfoList(String query);
}