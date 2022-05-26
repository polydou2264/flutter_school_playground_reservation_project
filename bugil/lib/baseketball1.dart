import 'package:flutter/material.dart';

class Basketball1 extends StatefulWidget {
  const Basketball1({Key? key}) : super(key: key);

  @override
  State<Basketball1> createState() => _Basketball1State();
}

class _Basketball1State extends State<Basketball1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('농구장1 예약', style: TextStyle(fontFamily: 'SueseongDotum', fontSize: 27),),
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
      body: Center(

      ),
    );
  }
}
