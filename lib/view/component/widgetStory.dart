import 'package:flutter/material.dart';

class widget_story extends StatelessWidget {
  const widget_story({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.5),
      child: Column(
        children: [
          Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'images/faceman.jpg',
                fit: BoxFit.cover,
              )),
          Text('name')
        ],
      ),
    );
  }
}