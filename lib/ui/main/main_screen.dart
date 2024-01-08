import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('서울지하철 정보 조회'),
      ),
      body: Column(
        children: [
          Text('지하철 역 이름'),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '지하철 역 이름',
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Text('111'),
                Text('111'),
                Text('111'),
              ],
            ),
          )
        ],
      ),
    );
  }
}