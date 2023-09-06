/// Заметка
abstract class NoteBase {
  /// Идентификатор
  final String id;

  /// Заголовок
  final String title;

  /// Содержание
  final String content;

  /// Дата создания
  final DateTime createdAt;

  /// Индикатор блокировки
  final bool isLocked;

  NoteBase({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    this.isLocked = false,
  });
}
