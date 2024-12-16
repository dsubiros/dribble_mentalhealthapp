import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  const ExerciseTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Column(children: [Icon(Icons.more_horiz)]),
      ),
    );
  }
}
