import 'package:flutter/material.dart';

class Title_bar extends StatelessWidget {
  const Title_bar(this.title_bar, {super.key});
  final String title_bar;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title_bar,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const Expanded(
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              "View all",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ],
    );
  }
}
