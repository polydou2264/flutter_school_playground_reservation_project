import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'ba1_dn.dart';
import 'ba2_dn.dart';
import 'futsal_dn.dart';
import 'package:bugil/sc_dn.dart';
import 'package:flutterfire_ui/auth.dart';

class dinnerScreen extends StatefulWidget {
  const dinnerScreen({Key? key}) : super(key: key);

  @override
  State<dinnerScreen> createState() => _dinnerScreenState();
}

class _dinnerScreenState extends State<dinnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('운동장 예약(저녁)', style: TextStyle(fontFamily: 'SueseongDotum', fontSize: 27),),
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
                      MaterialPageRoute(builder: (context) => baDn1()),
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
                      MaterialPageRoute(builder: (context) => futsalDn()),
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
                      MaterialPageRoute(builder: (context) => badn2()),
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
                      MaterialPageRoute(builder: (context) => scdn()),
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
