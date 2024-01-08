import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_info_app/ui/main/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        title: const Text('서울지하철 정보 조회'),
      ),
      body: Column(
        children: [
          const Text('지하철 역 이름'),
          TextField(
            onChanged: (query) {
              viewModel.getSubwayInfoList(query);
            },
            controller: _textController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '지하철 역 이름',
            ),
          ),
          Expanded(
            child: ListView(
              children: state.subwayInfoList
                  .map(
                    (e) => Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.grey[600],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(child: Text(e.statnNm!)),
                          ),
                          title: Text((e.statnNm!)),
                          subtitle: Text(e.trainLineNm!),
                          trailing: Container(
                            child: Text(e.barvlDt!),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
