import 'package:flutter/material.dart';
import 'package:yosalove/screen/Team_List.dart';

class TeamAdd extends StatefulWidget {
  const TeamAdd({super.key});

  @override
  State<TeamAdd> createState() => _TeamAddState();
}

class _TeamAddState extends State<TeamAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('推しチーム登録'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: TextField(
                decoration: InputDecoration(
                  labelText: 'チーム名',
                  hintText: '推しチームを登録する',

                ),
            ),
          ),
          Container(
            child: TextField(

              decoration: InputDecoration(

              ),

            ),
          ),

          ElevatedButton(
              onPressed: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => TeamList()));
              },
              child: Text('キャンセル')
          ),
        ]
      )

    );
  }
}
