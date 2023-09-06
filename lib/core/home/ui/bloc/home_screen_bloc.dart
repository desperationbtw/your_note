import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:your_note/core/home/domain/interfaces/note_base.dart';
import 'package:your_note/core/home/domain/models/note.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenInitialState()) {
    on<HomeScreenInitEvent>(_handleHomeScreenInitEvent);
    on<HomeScreenNavigateToNoteEvent>(_handleHomeScreenNavigateToNoteEvent);
  }

  FutureOr<void> _handleHomeScreenInitEvent(HomeScreenInitEvent event, Emitter<HomeScreenState> emit) async {
    await Future.delayed(const Duration(seconds: 2));

    final notes = [
      Note(id: '0', title: 'title', content: 'content', createdAt: DateTime.now()),
      Note(
        id: '1',
        title: 'Ad occaecat nulla velit non dolor dolore et tempor et laborum.',
        content: 'Ad occaecat nulla velit non dolor dolore et tempor et laborum.',
        createdAt: DateTime.now(),
      ),
      Note(
        id: '2',
        title: 'title',
        content:
            '''Culpa officia ullamco ullamco excepteur id est. Voluptate laboris non irure aliqua eiusmod eiusmod. Est duis nulla elit magna occaecat veniam mollit dolor sunt aute enim labore excepteur. Ad aliquip velit amet enim tempor laboris esse eiusmod eiusmod veniam adipisicing nisi anim. Ipsum dolore incididunt ad incididunt culpa minim eu consectetur.
Occaecat Lorem aliqua velit ut aliquip pariatur aliqua adipisicing et sint qui proident. Nisi nisi nisi ea incididunt eu quis. Non velit voluptate aute amet officia incididunt fugiat nostrud. Commodo sit labore velit do. Magna culpa ex deserunt ut consectetur officia ea. Anim non officia ullamco eu nisi sit voluptate nostrud eiusmod cillum.
Fugiat reprehenderit incididunt excepteur ut consequat consequat ut occaecat. Sunt minim excepteur adipisicing sit excepteur cupidatat fugiat nulla laborum irure ipsum sit eiusmod. In magna enim occaecat consectetur aliqua laboris anim laborum non veniam deserunt consequat quis pariatur. Reprehenderit officia aute deserunt proident duis exercitation sunt proident ipsum consectetur reprehenderit ut ad fugiat.
Esse velit consequat reprehenderit cupidatat veniam qui consequat sunt irure. Irure adipisicing nisi do et reprehenderit nostrud pariatur eu cillum. Sit anim laboris amet sint et et minim mollit anim aliquip. Enim consectetur deserunt occaecat duis magna aliquip laborum commodo proident quis minim. Lorem commodo ipsum velit non exercitation pariatur fugiat quis cupidatat magna id id nulla.
Irure nostrud pariatur culpa anim sunt nostrud exercitation aute tempor nulla occaecat. Laborum dolore officia culpa voluptate consequat ut eu consectetur ex anim. Id ut ea commodo nostrud do laboris do.''',
        createdAt: DateTime.now(),
      ),
      Note(
        id: '3',
        title: 'Secret soap recipt',
        content:
            'Ad occaecat nulla velit non dolor dolore et tempor et laborum.Ad occaecat nulla velit non dolor dolore et tempor et laborum.',
        createdAt: DateTime.now(),
        isLocked: true,
      ),
    ];

    emit(HomeScreenContentState.fromState(state, notes: notes));
  }

  FutureOr<void> _handleHomeScreenNavigateToNoteEvent(HomeScreenNavigateToNoteEvent event, Emitter<HomeScreenState> emit) {}
}
