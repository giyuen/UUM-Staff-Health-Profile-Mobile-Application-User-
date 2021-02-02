import 'package:flutter/material.dart';
import 'package:uumstaff_healthprofile/healthprofilePanel.dart';
import 'package:uumstaff_healthprofile/mainDrawer.dart';

class mainPanel extends StatefulWidget {
  @override
  _mainPanelState createState() => _mainPanelState();
}

class _mainPanelState extends State<mainPanel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(backgroundColor: Colors.black, title: Text("Home")),
            drawer: mainDrawer(),
            body: Center(
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/logo.png',
                        height: 250, scale: 1.7),
                    SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      minWidth: 250,
                      height: 50,
                      child: Text('View', style: TextStyle(fontSize: 15)),
                      color: Colors.black,
                      textColor: Colors.white,
                      elevation: 15,
                      onPressed: _onView,
                    ),
                    Container(
                        child:
                            Column(mainAxisSize: MainAxisSize.max, children: <
                                Widget>[
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 160, 20, 0),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Ink(
                                decoration: const ShapeDecoration(
                                  color: Colors.black,
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                    icon: Icon(
                                      Icons.alarm,
                                    ),
                                    iconSize: 35,
                                    color: Colors.white,
                                    splashColor: Colors.white,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                            elevation: 16,
                                            child: Container(
                                              height: 400.0,
                                              width: 360.0,
                                              child: ListView(
                                                children: <Widget>[
                                                  SizedBox(height: 20),
                                                  Center(
                                                    child: Text(
                                                      "Reminder",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(height: 30),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                      child: Text(
                                                        " Medical Check-Up\n" +
                                                            "20/2/2021 11.30am",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        border: Border.all(
                                                          width: 18.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                      child: 
                                                      Text(
                                                        "      Appointment\n"+
                                                        "25/2/2021 11.30am" ,
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        border: Border.all(
                                                          width: 18.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                      child: 
                                                      Text(
                                                        "@",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                      child: 
                                                      Text(
                                                        "There are no any upcoming event.",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }),
                              )))
                    ]))
                  ])),
            ),
          ),
        ));
  }

  void _onView() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => healthprofilePanel()));
  }

  void _onReminder() {}
}
