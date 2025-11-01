import 'note.dart';
import 'package:flutter/foundation.dart';

class NoteData extends ChangeNotifier {
  List<Note> allNotes = [
    //Nota por defecto
    Note(id: 0, text: "Primera Nota"),
  ];

  //Obtener nota
  List<Note> getAllNotes() {
    return allNotes;
  }

  //Añadir nota
  void addNewNote(Note note) {
    allNotes.add(note);
    notifyListeners();
  }

  //Actualizar nota
  void updateNote(Note note, String text) {
    // Listado de todas las notas
    for (int i = 0; i < allNotes.length; i++) {
      //Buscar la nota por id
      if (allNotes[i].id == note.id) {
        allNotes[i].text = text;
      }
    }
    notifyListeners();
  }

  //Eliminar nota
  void deleteNote(Note note) {
    allNotes.remove(note);
    notifyListeners();
  }
}
