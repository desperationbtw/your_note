part of 'home_screen_bloc.dart';

@immutable
sealed class HomeScreenEvent {}

/// Инициализация
class HomeScreenInitEvent extends HomeScreenEvent {}

/// Навигация на заметку
class HomeScreenNavigateToNoteEvent extends HomeScreenEvent {}
