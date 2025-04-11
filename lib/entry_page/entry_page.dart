import 'package:flutter/material.dart';
import 'components/date_picker.dart';
import 'components/workout_picker.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: constraints.maxHeight * 0.15),
              child: Column(
                children: [
                  DatePicker(),
                  SizedBox(height: constraints.maxHeight * 0.1),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth * 0.6),
                    child: WorkoutPicker()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}