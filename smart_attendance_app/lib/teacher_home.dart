import 'package:flutter/material.dart';
import 'student_list.dart';
import 'attendance_report.dart';
import 'face_attendance.dart';

class TeacherHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Teacher Dashboard")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Student List"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => StudentList()));
              },
            ),
            ElevatedButton(
              child: Text("Mark Attendance (Face)"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => FaceAttendance()));
              },
            ),
            ElevatedButton(
              child: Text("Attendance Report"),
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
