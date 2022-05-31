import 'package:flutter/material.dart';

class Basketball2 extends StatefulWidget {
  const Basketball2({Key? key}) : super(key: key);

  @override
  State<Basketball2> createState() => _Basketball2State();
}

class _Basketball2State extends State<Basketball2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('농구장2 예약(점심)', style: TextStyle(fontFamily: 'SueseongDotum', fontSize: 27),),
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
