import 'package:flutter/material.dart';
import 'package:subway_info_app/data/repository/subway_info_repository.dart';

import 'main_state.dart';

class MainViewModel extends ChangeNotifier {
  final SubwayInfoRepository _repository;

  MainState _state = const MainState();

  MainState get state => _state;

  MainViewModel({
    required SubwayInfoRepository SubwayInfoRepository,
  }) : _repository = SubwayInfoRepository;

  Future<void> getSubwayInfoList(String query) async {
    // loading
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final subwayInfoList = await _repository.getSubwayInfoList(query);
    _state = state.copyWith(
      subwayInfoList: subwayInfoList,
      isLoading: false,
    );
    notifyListeners();
  }
}
