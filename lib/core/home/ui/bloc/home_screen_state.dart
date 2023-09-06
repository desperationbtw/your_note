part of 'home_screen_bloc.dart';

@immutable
sealed class HomeScreenState {
  final List<NoteBase> notes;

  const HomeScreenState({required this.notes});

  HomeScreenState.fromState(
    HomeScreenState state, {
    List<NoteBase>? notes,
  }) : notes = notes ?? state.notes;
}

/// Начальное состояние
final class HomeScreenInitialState extends HomeScreenState {
  HomeScreenInitialState() : super(notes: []);
}

/// Состояние контента
final class HomeScreenContentState extends HomeScreenState {
  HomeScreenContentState.fromState(
    HomeScreenState state, {
    List<NoteBase>? notes,
  }) : super.fromState(state, notes: notes);
}

/// Состояние навигации на заметку
final class HomeScreenNavigateToNoteState extends HomeScreenState {
  /// Идентификатор
  final String id;

  HomeScreenNavigateToNoteState.fromState(
    HomeScreenState state, {
    required this.id,
  }) : super.fromState(state);
}
