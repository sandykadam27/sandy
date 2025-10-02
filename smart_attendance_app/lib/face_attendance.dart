import 'package:flutter/material.dart';

class FaceAttendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Face Attendance")),
      body: Center(
        child: ElevatedButton(
          child: Text("Simulate Face Detection"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Face detected! Attendance marked.")),
            );
          },
        ),
      ),
    );
  }
}
