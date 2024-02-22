import 'package:flutter/material.dart';

class TeamView extends StatefulWidget {
  const TeamView({super.key});

  @override
  State<TeamView> createState() => _TeamViewState();
}

class _TeamViewState extends State<TeamView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('選択されたチーム名を受け取る'),
        //titleは選択されたチーム名を受け取る
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.network('https://pbs.twimg.com/media/F_3ejb4awAA4R-B.jpg'),
            width: double.infinity,
          ),
          SizedBox(height: 32),
          Container(
              alignment: Alignment.center,
              child: Text(
                '選択されたチームの名前', style: TextStyle(fontWeight:FontWeight.bold),
                //選択されたチーム名を取得する
              ),
          ),
          SizedBox(height: 32),
          Container(
              alignment: Alignment.center,
              child: Text(
              '推し度の評価バー', style: TextStyle(fontWeight:FontWeight.bold),
              ),
            //推しの評価バーを取得する
          ),
          SizedBox(height: 32),
          Container(
              alignment: Alignment.center,
              child: Text(
              'チームの推しポイント', style: TextStyle(fontWeight:FontWeight.bold),
              ),
            //追加された推しポイントを取得する
          ),
        ],
      ),
    );
  }
}
