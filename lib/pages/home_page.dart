import 'package:dribble_mentalhealthapp/widgets/emoticon_face.dart';
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
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
                  EmoticonFace(
                    face: '😢',
                    text: 'Bad',
                  ),
                  // Fine
                  EmoticonFace(
                    face: '😊',
                    text: 'Fine',
                  ),
                  // Well
                  EmoticonFace(
                    face: '😄',
                    text: 'Well',
                  ),
                  // Excellent
                  EmoticonFace(
                    face: '😂',
                    text: 'Excellent',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
