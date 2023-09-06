import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:your_note/core/note_edit/ui/note_edit_screen.dart';
import 'package:your_note/core/note_view/ui/note_view_screen.dart';
import 'package:your_note/core/theme/ui_colors_dark.dart';
import 'package:your_note/core/theme/ui_text_style.dart';

import 'bloc/home_screen_bloc.dart';
import 'widgets/note_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = GetIt.I.get<HomeScreenBloc>();
    bloc.add(HomeScreenInitEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColorsDark.uiBg,
      appBar: AppBar(
        title: Text(
          'Заметки',
          style: UITextStyle.appBar(UIColorsDark.text800),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Ink(
            decoration: BoxDecoration(
              color: UIColorsDark.primary,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(16.0),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.search, size: 18.0),
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Ink(
            decoration: BoxDecoration(
              color: UIColorsDark.primary,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(16.0),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.settings, size: 18.0),
              ),
            ),
          ),
          const SizedBox(width: 16.0),
        ],
      ),
      body: BlocConsumer<HomeScreenBloc, HomeScreenState>(
        bloc: bloc,
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            itemBuilder: (_, i) {
              return OpenContainer(
                transitionType: ContainerTransitionType.fadeThrough,
                closedColor: UIColorsDark.uiBg,
                openColor: UIColorsDark.uiBg,
                middleColor: UIColorsDark.uiBg,
                openBuilder: (BuildContext context, VoidCallback _) {
                  return NoteViewScreen(note: state.notes[i]);
                },
                closedShape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(46 / 2),
                  ),
                ),
                closedBuilder: (BuildContext context, VoidCallback closeBuilder) {
                  return NoteTile(
                    note: state.notes[i],
                    onTap: closeBuilder,
                  );
                },
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemCount: state.notes.length,
          );
        },
      ),
      floatingActionButton: OpenContainer(
        transitionType: ContainerTransitionType.fadeThrough,
        closedColor: UIColorsDark.uiBg,
        openColor: UIColorsDark.uiBg,
        middleColor: UIColorsDark.uiBg,
        openBuilder: (BuildContext context, VoidCallback _) {
          return const NoteEditScreen();
        },
        closedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(46 / 2),
          ),
        ),
        closedBuilder: (BuildContext context, VoidCallback closeBuilder) {
          return FloatingActionButton(
            backgroundColor: UIColorsDark.primary,
            onPressed: closeBuilder,
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }
}
