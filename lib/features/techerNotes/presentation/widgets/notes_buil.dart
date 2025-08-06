import 'package:flutter/widgets.dart';
import 'package:moaazapp/features/homeWorks/presentation/widget/viewed_or_not_widget.dart';
import 'package:moaazapp/features/techerNotes/presentation/widgets/notes_column.dart';

class NotesBuild extends StatelessWidget {
  const NotesBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 9),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: double.infinity,
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ViewedOrNotWidget(), NotesColumn()],
          ),
        ),
      ),
    );
  }
}
