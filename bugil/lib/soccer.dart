import 'package:flutter/material.dart';
import 'chat_screen.dart';

class soccer extends StatefulWidget {
  const soccer({Key? key}) : super(key: key);

  @override
  State<soccer> createState() => _soccerState();
}

class _soccerState extends State<soccer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('운동장 예약', style: TextStyle(fontFamily: 'SueseongDotum', fontSize: 27),),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(
            Icons.exit_to_app_sharp,
            color: Colors.white,
          ),
            onPressed: (){
              Navigator.pop(context);
            },

          ),
        ],
      ),
    );
  }
}

