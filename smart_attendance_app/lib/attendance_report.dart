import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AttendanceReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Attendance Report")),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("attendance").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          final docs = snapshot.data!.docs;
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(docs[index]['name']),
                subtitle: Text(
                    "Date: ${docs[index]['date']} - Status: ${docs[index]['status']}"),
              );
            },
          );
        },
      ),
    );
  }
}
