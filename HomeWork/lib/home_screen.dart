import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/add_student_screen.dart';
import 'package:my_app/student.dart';

import 'edit_student_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Student> _students;

  @override
  void initState() {
    super.initState();
    _students = List<Student>();
    _students.add(Student(00001, "Student 1", "Math", "9.0"));
    _students.add(Student(00002, "Student 2", "Math 1", "7.0"));
    _students.add(Student(00003, "Student 3", "Math 2", "5.0"));
    _students.add(Student(00004, "A 4", "Math 1", "3.0"));
    _students.add(Student(00005, "C 5", "Math 2", "2.0"));
    _students.add(Student(00006, "D 6", "Math 1", "6.0"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sun * University'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return _itemStudent(_students[index]);
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            );
          },
          itemCount: _students.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent,
        onPressed: () async {
          final student = await Navigator.of(context).push(
            AddStudentScreen.getPage(),
          );
          if (student != null) {
            setState(() {
              _students.add(student);
            });
          }
        },
      ),
    );
  }

  Widget _itemStudent(Student student) {
    return InkWell(
      onTap: () async => _editStudent(student),
      onLongPress: () => _deleteStudent(student),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 60),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              width: 50,
              height: 50,
              child: Text(
                student.nameStudent[0].toUpperCase(),
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    student.nameStudent,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    student.subject,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                student.score,
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _editStudent(Student student) async {
    final result = await Navigator.of(context).push(
      EditStudentScreen.getPage(student: student),
    );
    if (result != null) {
      setState(() {});
    }
  }

  Future<void> _deleteStudent(Student student) async {
    final result = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("Do you want delete this student?"),
          actions: [
            RaisedButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            RaisedButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      },
    );
    if (result == true) {
      setState(() {
        _students.removeWhere((e) => e.idStudent == student.idStudent);
      });
    }
  }
}