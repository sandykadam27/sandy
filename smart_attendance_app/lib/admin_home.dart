import 'package:flutter/material.dart';
import 'student_list.dart';
import 'attendance_report.dart';

class AdminHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("View All Students"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => StudentList()));
              },
            ),
            ElevatedButton(
              child: Text("View Attendance Reports"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AttendanceReport()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
