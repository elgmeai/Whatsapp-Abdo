import 'package:flutter/material.dart';

class listOfChats extends StatelessWidget {
  const listOfChats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: ListTile(
          title: const Text('title'),
          subtitle: const Text('subtitle'),
          leading: Container(
              clipBehavior: Clip.hardEdge,
              height: 90,
              width: 90,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset('images/faceman.jpg')),
          trailing: const Text('10:50'),
        ),
      ),
    );
  }
}