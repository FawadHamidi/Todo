import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String content, todoId;
  Timestamp dateCreated;
  bool done;

  TodoModel({this.content, this.todoId, this.dateCreated, this.done});

  TodoModel.fromDocumentSnapshot(
    DocumentSnapshot documentSnapshot,
  ) {
    todoId = documentSnapshot.id;
    content = documentSnapshot.data()['content'];
    dateCreated = documentSnapshot.data()['dateCreated'];
    done = documentSnapshot.data()['done'];
  }
}
