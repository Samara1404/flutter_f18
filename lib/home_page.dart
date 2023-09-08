import 'package:flutter/material.dart';

import 'components/quiz_button.dart';
import 'components/result_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff202020),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Homework - 07',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Кыргызстанда 7 область барбы?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
            Spacer(),
            QuizButton(true),
            SizedBox(height: 40),
            QuizButton(false),
            Spacer(),
            Row(
              children: [
                ResultIcon(true),
                ResultIcon(false),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
