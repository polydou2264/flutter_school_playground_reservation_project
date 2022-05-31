import 'package:flutter/material.dart';
import 'chat_screen.dart';

class futsal extends StatefulWidget {
  const futsal({Key? key}) : super(key: key);

  @override
  State<futsal> createState() => _futsalState();
}

class _futsalState extends State<futsal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('풋살장 예약(점심)', style: TextStyle(fontFamily: 'SueseongDotum', fontSize: 27),),
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

