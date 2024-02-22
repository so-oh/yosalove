

import 'package:flutter/material.dart';
import 'package:yosalove/screen/Team_Add.dart';
import 'package:yosalove/screen/Team_View.dart';

class TeamList extends StatefulWidget {
  TeamList({Key? key}) : super(key: key);

  @override
  State<TeamList> createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {
@override
Widget build(BuildContext context) {
//チームリストのデータを設定
  List<Map<String, dynamic>> teamList = []; // チームリストの型を変更

  return Scaffold(
    appBar: AppBar(

      backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      title: Text('推しチームリスト'),
    ),
    body: ListView.builder(
      itemCount: teamList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(teamList[index]["teamname"].toString()),
            // onTap: () {
            //   // 選択されたチームの詳細画面に遷移する
            //   Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => TeamView(teamData: teamList[index])),
            //   );
            // },
          ),
        );

      },//チームリストを表示



    ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {//追加画面で入力された名前などの値を取得する
          final Map<String, dynamic>? newTeamList = await Navigator.of(context).push(
            MaterialPageRoute(builder:(context) => TeamAdd()),
          );
          //もしも値が取得できたら
          if(newTeamList != null){
                setState(() {
                  teamList.add(newTeamList);
                });
            };
          },
        child: Icon(Icons.add),
      ),

    );


  }
}