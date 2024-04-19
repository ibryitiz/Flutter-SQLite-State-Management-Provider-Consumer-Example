import 'package:flutter/material.dart';
import 'package:flutter_application/models/note.dart';

class HomePageViewModel extends ChangeNotifier {
  List<Note> _noteList = [
    Note(title: "Flutter"),
    Note(title: "Dart"),
    Note(title: "FireBase"),
    Note(title: "Sqlite"),
    Note(title: "API"),
    Note(title: "Provider"),
  ];
  List<Note> get noteList => _noteList;

  set noteList(List<Note> value) {
    _noteList = value;
    notifyListeners();
  }

  List<Note> getNotes() {
    return _noteList;
  }

  void createNote(String title) {
    Note note = Note(title: title);
    noteList.add(note);
  }

  void deleteNote(int index) {
    noteList.removeAt(index);
  }
}
