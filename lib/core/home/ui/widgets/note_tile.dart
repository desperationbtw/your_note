import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:your_note/core/home/domain/interfaces/note_base.dart';
import 'package:your_note/core/theme/ui_colors_dark.dart';
import 'package:your_note/core/theme/ui_text_style.dart';
import 'package:your_note/utils/color_generator.dart';
import 'package:your_note/utils/date_formatter.dart';

/// Тайл заметки
class NoteTile extends StatelessWidget {
  /// Заметка
  final NoteBase note;

  /// Колбек при нажатии
  final VoidCallback onTap;

  const NoteTile({
    super.key,
    required this.note,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Ink(
        decoration: BoxDecoration(
          color: UIColorsDark.ui100,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 3.0, backgroundColor: ColorGenerator.pastel()),
                    const SizedBox(width: 4.0),
                    Expanded(
                      child: Text(
                        note.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: UITextStyle.header(UIColorsDark.text800),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
                if (note.isLocked)
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                    child: Text(
                      note.content,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: UITextStyle.subTitle(UIColorsDark.text700),
                    ),
                  )
                else
                  Text(
                    note.content,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: UITextStyle.subTitle(UIColorsDark.text700),
                  ),
                const SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      DateFormatter.format(note.isLocked ? DateTime(1991) : note.createdAt),
                      style: UITextStyle.caption(UIColorsDark.text500).copyWith(fontStyle: FontStyle.italic),
                    ),
                    if (note.isLocked) const Icon(Icons.lock, size: 16.0, color: UIColorsDark.ui300),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
