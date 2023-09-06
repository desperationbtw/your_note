import '../interfaces/note_base.dart';

class Note implements NoteBase {
  @override
  final String id;

  @override
  final String title;

  @override
  final String content;

  @override
  final DateTime createdAt;

  @override
  final bool isLocked;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    this.isLocked = false,
  });
}
