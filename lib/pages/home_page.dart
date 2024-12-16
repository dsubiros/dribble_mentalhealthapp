import 'package:dribble_mentalhealthapp/widgets/emoticon_face.dart';
import 'package:dribble_mentalhealthapp/widgets/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // Greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Jared!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            '23 Jan, 2021',
                            style: TextStyle(
                              color: Colors.blue[200],
                              // fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      // Notifications
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20.0), // Search bar

                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5.0),
                        Text('Search', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25.0),

                  // How do you feel?
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),

                  const SizedBox(height: 25),
                  // 4 different faces
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Bad
                      EmoticonFace(face: '😢', text: 'Bad'),
                      // Fine
                      EmoticonFace(face: '😊', text: 'Fine'),
                      // Well
                      EmoticonFace(face: '😄', text: 'Well'),
                      // Excellent
                      EmoticonFace(face: '😂', text: 'Excellent'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    left: 25.0,
                    right: 25.0,
                  ),
                  child: Column(
                    children: [
                      // Exercises heading
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Exercises',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      // ListView of exercises
                      const SizedBox(height: 15),

                      Expanded(
                        child: ListView(
                          // shrinkWrap: true,

                          children: [
                            ExerciseTile(
                                exerciseName: 'Speaking skills',
                                numberOfExercises: 16,
                                icon: Icons.favorite,
                                color: Colors.orange[500]!),
                            ExerciseTile(
                                exerciseName: 'Reading skills',
                                numberOfExercises: 9,
                                icon: Icons.person_rounded,
                                color: Colors.blue[500]!),
                            const ExerciseTile(
                                exerciseName: 'Writing skills',
                                numberOfExercises: 2,
                                icon: Icons.star,
                                color: Colors.pink),
                            const ExerciseTile(
                                exerciseName: 'Memorizing skills',
                                numberOfExercises: 6,
                                icon: Icons.hourglass_bottom,
                                color: Colors.green),
                            ExerciseTile(
                                exerciseName: 'Reading skills',
                                numberOfExercises: 19,
                                icon: Icons.person_rounded,
                                color: Colors.blue[500]!),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
