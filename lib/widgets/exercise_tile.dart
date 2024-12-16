import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String exerciseName;
  final int numberOfExercises;
  final IconData icon;
  final Color color;

  const ExerciseTile(
      {super.key,
      required this.exerciseName,
      required this.numberOfExercises,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(15.0)),
            padding: const EdgeInsets.all(10.0),
            child: Icon(icon, size: 35, color: Colors.white),
          ),
          title: Text(
            exerciseName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('$numberOfExercises Exercises'),
          trailing: const Column(children: [Icon(Icons.more_horiz)]),
        ),
      ),
    );
  }
}
