

import 'package:flutter/material.dart';
import 'package:yosalove/screen/Team_Add.dart';

class TeamList extends StatefulWidget {
  const TeamList({super.key});

  @override
  State<TeamList> createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {
@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(

      backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      title: Text('推しチームリスト'),
    ),
    body: ListView(
      children: [
        SizedBox(height: 8),
        ListTile(
          leading: Image.network('https://lh3.googleusercontent.com/proxy/6GVuMEGjNUGfe_3SmgXqD1G1ev-SJQQ5vkeCOox5MTC90h3n258S-JF9_KICnu0acNnOxvSZW0R2'),
          title: Text('よさこいサークル隼人'),
          onTap: (){},
        ),
        SizedBox(height: 8),
        ListTile(
          leading: Image.network('https://pbs.twimg.com/ext_tw_video_thumb/1643099170700693504/pu/img/21eZw3HeTdPcApOc?format=jpg&name=large'),
          title: Text('志學館大学よさこい踊り連我流楽'),
          onTap: (){},
        ),
        SizedBox(height: 8),
        ListTile(
          leading: Image.network('https://static.yosakoi-soran.jp/wp-content/uploads/2023/04/02071956/%E9%B9%BF%E5%85%90%E5%B3%B6%E5%9B%BD%E9%9A%9B%E5%A4%A7%E5%AD%A6-%E3%82%88%E3%81%95%E3%81%93%E3%81%84%E9%83%A8-%E5%89%B5%E7%94%9F%E5%85%90.jpeg'),
          title: Text('鹿児島国際大学よさこい部創生児'),
          onTap: (){},
        ),



      ],
    ),

    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context) => TeamAdd() ));
      },
      child: Icon(Icons.add),
    ),

    );
  }
}