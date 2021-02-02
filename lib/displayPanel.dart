import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class displayPanel extends StatefulWidget {
  @override
  _displayPanelState createState() => _displayPanelState();
}

class _displayPanelState extends State<displayPanel> {
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
          appBar: AppBar(
            title: Text(
              "Medical Check-Up Details",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.download_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  Widget yesButton = FlatButton(
                    child: Text("Yes"),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop();
                      Toast.show("Downloading...", context,
                          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                    },
                  );
                  Widget noButton = FlatButton(
                    child: Text("No"),
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop();
                    },
                  );
                  AlertDialog alert = AlertDialog(
                    title: Text("Download ?"),
                    content: Text("Are you sure you want to download?"),
                    actions: [
                      yesButton,
                      noButton,
                    ],
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                },
              )
            ],
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        "Basic Measurement",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 18.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: DataTable(
                        columns: [
                          DataColumn(
                              label: Text(
                            "Aspect",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'Result',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text("Height (cm)",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("170 cm",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Weight (kg)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("58 kg",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('BMI (kg/m\u00B2)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("20.1 kg/m\u00B2 (Normal)",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Pulse Rate (Per Min)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("94 Beats (Per Min)",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Blood Pressure (mmHg)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("112/70 mmHg",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                        ],
                      )),
                 
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        "Vision Test",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 18.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: DataTable(
                        columns: [
                          DataColumn(
                              label: Text(
                            "Aspect",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'Result',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text("Unaided (L)",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("6/24 (Normal)",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Unaided (R)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("6/12 (Normal)",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Aided (L)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("6/6 (Normal)",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Aided (R)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("6/6 (Normal)",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Color Vision Test',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Comment',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                        ],
                      )),
                       SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        "Hearing Test",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 18.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: DataTable(
                        columns: [
                          DataColumn(
                              label: Text(
                            "Aspect",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'Result',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text("Left",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Right',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Comment',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                        ],
                      )),
                      SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        "General Examination",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 18.0,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: DataTable(
                        columns: [
                          DataColumn(
                              label: Text(
                            "Aspect",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                          DataColumn(
                              label: Text(
                            'Result',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text("Deformities",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Pallon',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Cyanosis',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Jaundice',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Oedema',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Skin Diseases',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                            DataCell(Text("Normal",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),)),
                          ]),
                        ],
                      )),
                      SizedBox(height: 20),
                ])),
          ),
        ),
      ),
    );
  }
}
