import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'package:bugil/dinner_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class timeset extends StatefulWidget {
  const timeset({Key? key}) : super(key: key);

  @override
  State<timeset> createState() => _timesetState();
}

class _timesetState extends State<timeset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('북일고 운동장 예약', style: TextStyle(fontFamily: 'SueseongDotum', fontSize: 27),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(

              Icons.exit_to_app_sharp,
              color: Colors.white,
            ),
            onPressed: (){
              FirebaseAuth.instance.signOut();
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                },
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black,width: 4)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("점심", style: TextStyle(fontFamily: 'SueseongDotum', color: Colors.black, fontSize: 30)),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dinnerScreen()),
                  );
                },
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black,width: 4)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("저녁", style: TextStyle(fontFamily: 'SueseongDotum', color: Colors.black, fontSize: 30)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container()
        ],
      ),
    );
  }
}
