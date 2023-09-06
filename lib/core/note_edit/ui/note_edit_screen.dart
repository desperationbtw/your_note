import 'package:flutter/material.dart';
import 'package:your_note/core/theme/ui_colors_dark.dart';

class NoteEditScreen extends StatefulWidget {
  const NoteEditScreen({super.key});

  @override
  State<NoteEditScreen> createState() => _NoteEditScreenState();
}

class _NoteEditScreenState extends State<NoteEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColorsDark.uiBg,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: AnimatedList(
              itemBuilder: (context, index, animation) {
                return const ListTile(
                  title: Text('title'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
