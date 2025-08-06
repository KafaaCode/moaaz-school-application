import 'package:flutter/widgets.dart';
import 'package:moaazapp/features/degrees/presentation/widgets/degree_container.dart';
import 'package:moaazapp/features/degrees/presentation/widgets/degrees_column_widget.dart';

class DegreesBuild extends StatelessWidget {
  const DegreesBuild({super.key});

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
            children: [DegreeContainer(), DegreeDetailsColumn()],
          ),
        ),
      ),
    );
  }
}
