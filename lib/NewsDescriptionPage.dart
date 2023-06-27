import 'package:flutter/material.dart';
import 'package:new_api/widgets/NewsCardWidgets.dart';

import 'model/data.dart';

class NewsDescriptionPage extends StatelessWidget {
  final Data data;
  const NewsDescriptionPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          body: NewsCardWidgets(data: data),
        ),
      ),
    );
  }
}
