// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton( {required this.isTrue, Key? key, required this.onPressed}) : super(key: key);
  final bool isTrue;
  final void Function(bool) onPressed;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: () => onPressed (isTrue),
      style: ElevatedButton.styleFrom(
        primary: isTrue ? const Color(0xff4cAf52): const Color(0xfff54335),
        ),
        child: Text(
          isTrue ? 'Туура' : 'Туура эмес',
          style: const TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}