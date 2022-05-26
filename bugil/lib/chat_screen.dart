import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'baseketball1.dart';
import 'basketball2.dart';
import 'futsal.dart';
import 'soccer.dart';
import 'package:flutterfire_ui/auth.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('북일고 운동장 예약', style: TextStyle(fontFamily: 'SueseongDotum', fontSize: 27),),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Basketball1()),
                    );
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black,width: 4)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("농구장1", style: TextStyle(fontFamily: 'SueseongDotum', color: Colors.black, fontSize: 30)),
                        Icon(Icons.sports_basketball, size: 50, color: Colors.white,)

                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => futsal()),
                    );
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black,width: 4)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("풋살장", style: TextStyle(fontFamily: 'SueseongDotum', color: Colors.black, fontSize: 30)),
                        Icon(Icons.sports_soccer, size: 50, color: Colors.white,)

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Basketball2()),
                    );
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black,width: 4)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("농구장2", style: TextStyle(fontFamily: 'SueseongDotum', color: Colors.black, fontSize: 30)),
                        Icon(Icons.sports_basketball, size: 50, color: Colors.white,)

                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => soccer()),
                    );
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black,width: 4)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("운동장", style: TextStyle(fontFamily: 'SueseongDotum', color: Colors.black, fontSize: 30)),
                        Icon(Icons.sports_soccer, size: 50, color: Colors.white,)

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                )
              ],
            ),


          ],

        ),
      ),
    );
  }
}

