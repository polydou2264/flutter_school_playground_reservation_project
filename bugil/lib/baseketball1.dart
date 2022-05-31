import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

final firestore = FirebaseFirestore.instance;

class Event {
  String title;
  Event({required this.title});

  @override
  String toString() => title;
}

class Basketball1 extends StatefulWidget {
  const Basketball1({Key? key}) : super(key: key);

  @override
  State<Basketball1> createState() => _Basketball1State();
}

class _Basketball1State extends State<Basketball1> {

  late Map<DateTime, List<Event>> selectedEvents;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();

  getData() async {
    try {
      var dateevent = await firestore.collection('ba1ln').get();
      if(dateevent.docs.isNotEmpty){
        for(var doc in dateevent.docs){
          var time = DateTime.parse(doc['date']);
          String event = doc['events'];
          if(selectedEvents.containsKey(time)){

          } else {
            selectedEvents[time] = [Event(title: event)];
          }
          print(selectedEvents);
          _getEventsfromDay(time);
          setState((){});
        }
      }
    } catch (e){
      AlertDialog(
        title: Text('오류'),
        content: Text('인터넷 연결을 확인해주세요'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("확인"))
        ],
      );
    }
  }

  List<Event> _getEventsfromDay(DateTime date){
    return selectedEvents[date]??[];
  }



  @override
  void initState() {
    selectedEvents = {};
    getData();
    super.initState();
  }

  @override
  void dispose(){
    _eventController.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('농구장1 예약(점심)', style: TextStyle(fontFamily: 'SueseongDotum', fontSize: 27),),
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
      body:
      Column(
        children: [
          TableCalendar(
            focusedDay: selectedDay,
            firstDay: DateTime(2021),
            lastDay: DateTime(2050),
            //locale: 'ko-KR',

            calendarBuilders: CalendarBuilders( //한글로 바꿔줌
                dowBuilder: (context, day){
                  switch(day.weekday){
                    case 1:
                      return Center(child: Text('월'),);
                    case 2:
                      return Center(child: Text('화'),);
                    case 3:
                      return Center(child: Text('수'),);
                    case 4:
                      return Center(child: Text('목'),);
                    case 5:
                      return Center(child: Text('금'),);
                    case 6:
                      return Center(child: Text('토'),);
                    case 7:
                      return Center(child: Text('일', style: TextStyle(color: Colors.red),),);
                  }
                }
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,

            ),

            daysOfWeekVisible: true,
            onDaySelected: (DateTime selectDay, DateTime focusDay){
              setState((){
                selectedDay = selectDay;
                focusedDay = focusDay;
              });
              print(selectedDay);
            },

            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              todayDecoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  shape: BoxShape.circle
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              selectedTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),

            selectedDayPredicate: (DateTime date){
              return isSameDay(selectedDay, date);
            },

            eventLoader: _getEventsfromDay,

          ),
        //ListTile(title:Text(event.title),))
          ..._getEventsfromDay(selectedDay).map((Event event) => Card(elevation: 2, child: ListTile(title:Text(event.title), leading: Icon(Icons.calendar_today), trailing: IconButton(onPressed: (){print("object");}, icon: Icon(Icons.delete)),)),)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDialog(
            context: context,
            builder: (context) =>
                AlertDialog(
                  title: Text("예약하기"),
                  content:
                    TextFormField(
                      controller: _eventController,
                      decoration: InputDecoration(
                        hintText: '예약 내용을 입력하세요',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.black)
                        )
                      ),
                    ),
                    //TextFormField(controller: _eventController,),
                  actions: [
                    TextButton(
                      child: Text("취소"),
                      onPressed: () => Navigator.pop(context),
                    ),
                    TextButton(
                      child: Text("확인"),
                      onPressed: () async {
                        if(_eventController.text.isEmpty){
                        } else {
                          if(selectedEvents[selectedDay]!=null){
                            await showDialog(
                                context: context,
                                builder: (context){
                                  return AlertDialog(
                                    title: Text("오류"),
                                    content: Text("이미 예약된 날짜입니다."),
                                    actions: [
                                      TextButton(
                                          onPressed: () => Navigator.pop(context),
                                          child: Text("확인"))
                                    ],
                                  );
                                }
                            );
                            //selectedEvents[selectedDay]?.add(Event(title: _eventController.text));
                          } else {
                            selectedEvents[selectedDay] = [
                              Event(title: _eventController.text) ];
                            try{

                              var date_a = await  firestore.collection('ba1ln').add({'date': selectedDay.toString(), 'events': _eventController.text});
                              getData();

                            } catch (e) {
                              AlertDialog(
                                title: Text('오류'),
                                content: Text('인터넷 연결을 확인해주세요'),
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text("확인"))
                                ],
                              );
                            }
                          }
                        }
                        Navigator.pop(context);
                        _eventController.clear();
                        setState((){});
                        print(selectedEvents);
                        return;
                      },
                    )
                  ],
        )),
        label: Text('예약하기'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.orange
      ),
    );
  }
}





