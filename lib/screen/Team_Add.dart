import 'package:flutter/material.dart';
import 'package:yosalove/screen/Team_List.dart';

class TeamAdd extends StatefulWidget {
  const TeamAdd({Key? key}) : super(key: key);

  @override
  State<TeamAdd> createState() => _TeamAddState();
}

class _TeamAddState extends State<TeamAdd> {
  String _teamname = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('推しチーム登録'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Image.network('https://pbs.twimg.com/media/F_3ejb4awAA4R-B.jpg'),
            //追加したいチームを自分のデバイスから登録する
          ),
          SizedBox(height: 16),
          Container(
            child: TextField(
                onChanged:(content){
                  setState(() {
                    _teamname = content.trim();//文字列の値が入力されたら_teamnameに格納する。また、trim()は前後の空白を削除する
                  });
                },
                decoration: InputDecoration(
                  labelText: 'チーム名',
                  hintText: '登録したい推しチームを入力してね',
                ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            child: Text('ここに評価バーが入ります'),
          ),
          SizedBox(height: 16),
          Container(
            child: TextField(


              decoration: InputDecoration(
                labelText: '推しポイント',
                hintText: 'このチームの推しポイントをコメント入力してね',

              ),

            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                if (_teamname.isNotEmpty) {
                  // チーム名を持つMapを返す
                  Navigator.of(context).pop<Map<String, dynamic>>({
                    'teamname': _teamname,
                    // ここに他のデータも追加できます
                  });
                }
              },
                  child: Text('推す！！！',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
              ),

              SizedBox(width: 32),

              OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('キャンセル', style: TextStyle(color: Colors.blue),)
              ),
            ],
          ),

        ],
      ),

    );
  }
}
