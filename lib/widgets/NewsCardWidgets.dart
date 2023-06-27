import 'package:flutter/material.dart';

import '../model/data.dart';

class NewsCardWidgets extends StatelessWidget {
  final Data data;

  const NewsCardWidgets({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Card(
            semanticContainer: true,
            shadowColor: Colors
                .purple, //this is container that adjust according user phone screen.
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(
                10), //this is used to give shape to image even form single side
            child: Image.network(
              '${data.avatar}',
              fit: BoxFit.fill,
              height: 150,
              width: 150,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data.id.toString(),
              style: const TextStyle(fontSize: 20, color: Colors.purple),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data.first_name,
              style: const TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              data.last_name,
              style: const TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data.email,
              style: const TextStyle(fontSize: 20, color: Colors.brown),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
