import 'package:flutter/material.dart';
import 'package:your_note/core/home/domain/interfaces/note_base.dart';
import 'package:your_note/core/theme/ui_colors_dark.dart';
import 'package:your_note/core/theme/ui_text_style.dart';
import 'package:your_note/utils/date_formatter.dart';

class NoteViewScreen extends StatefulWidget {
  final NoteBase note;

  const NoteViewScreen({
    super.key,
    required this.note,
  });

  @override
  State<NoteViewScreen> createState() => _NoteViewScreenState();
}

class _NoteViewScreenState extends State<NoteViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColorsDark.uiBg,
      floatingActionButton: FloatingActionButton(
        backgroundColor: UIColorsDark.primary,
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
              title: Text(
                widget.note.title,
                style: UITextStyle.appBar(UIColorsDark.text800),
              ),
              elevation: 10.0,
              automaticallyImplyLeading: false,
              expandedHeight: 50,
              floating: true,
              snap: true,
              backgroundColor: UIColorsDark.uiBg,
              surfaceTintColor: UIColorsDark.uiBg,
            )
          ];
        },
        body: ListView(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 80.0),
          children: [
            Card(
              color: UIColorsDark.ui100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.note.content,
                  style: UITextStyle.subTitle(UIColorsDark.text700),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                DateFormatter.format(widget.note.createdAt),
                style: UITextStyle.caption(UIColorsDark.text500).copyWith(fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
