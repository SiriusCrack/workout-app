import 'package:flutter/material.dart';

class WorkoutPicker extends StatelessWidget {
  const WorkoutPicker ({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 8,
      children: [
        Text(
          'I did ',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        WorkoutInput(),
        Text(
          ' for ',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        WorkoutInput(),
        Text(
          ' reps at a weight of ',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        WorkoutInput(),
        Text(
          ' kgs.',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}

class WorkoutInput extends StatefulWidget {
  const WorkoutInput({super.key});

  @override
  State<StatefulWidget> createState() => _WorkoutInputState();
}

class _WorkoutInputState extends State<WorkoutInput> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: TextField(
        controller: _controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 2)
        ),
      ),
    );
  }
}