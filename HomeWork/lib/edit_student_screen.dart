import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/student.dart';

class EditStudentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EditStudentScreenState();
  }

  static PageRoute getPage({Student student}) {
    return MaterialPageRoute(
      builder: (context) => EditStudentScreen(),
      settings: RouteSettings(arguments: {"student": student}),
    );
  }
}

class _EditStudentScreenState extends State<EditStudentScreen> {
  Student _student;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arg = ModalRoute.of(context).settings.arguments;
    _student = arg["student"];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(
                flex: 2,
              ),
              Text(
                "Edit Student",
                style: TextStyle(fontSize: 30),
              ),
              Spacer(
                flex: 1,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Student name",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onChanged: (value) {
                  _student.nameStudent = value;
                },
                initialValue: _student.nameStudent,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Subject",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onChanged: (value) {
                  _student.subject = value;
                },
                initialValue: _student.subject,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Student score",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                initialValue: _student.score,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  _student.score = value;
                },
              ),
              Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: <Widget>[
                  SizedBox(width: 50),
                  RaisedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      Navigator.of(context).pop(_student);
                    },
                  ),
                  SizedBox(width: 50),
                  RaisedButton(
                    child: Text("Cancel"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
