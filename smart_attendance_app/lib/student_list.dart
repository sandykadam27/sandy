import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student List")),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("students").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          final docs = snapshot.data!.docs;
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(docs[index]['name']),
                subtitle: Text("ID: ${docs[index]['studentId']}"),
              );
            },
          );
        },
      ),
    );
  }
}
