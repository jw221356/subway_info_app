import 'package:get_it/get_it.dart';
import 'package:subway_info_app/data/data_source/subway_info_api.dart';
import 'package:subway_info_app/data/repository/subway_info_repository.dart';
import 'package:subway_info_app/data/repository/subway_info_repository_impl.dart';
import 'package:subway_info_app/ui/main/main_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<SubwayApi>(SubwayApi());
  getIt.registerSingleton<SubwayInfoRepository>(SubwayInfoImpl(getIt()));
  getIt.registerFactory<MainViewModel>(
          () => MainViewModel(SubwayInfoRepository: getIt()));
}
