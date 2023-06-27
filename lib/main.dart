import 'package:flutter/material.dart';
import 'package:new_api/service/api_service.dart';
import 'package:new_api/widgets/NewsCardWidgets.dart';

import 'NewsDescriptionPage.dart';
import 'model/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "News Api",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ),
          leading: Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),

            child: Image.asset('assets/logo.png'),
          )),
          backgroundColor: Colors.black,
        ),
        body: FutureBuilder(
            future: apiService.getData(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Data>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NewsDescriptionPage(
                                            data: snapshot.data![index])));
                          },
                          child: NewsCardWidgets(data: snapshot.data![index]));
                    });
              }
              return const Center(child: CircularProgressIndicator());
            }));
  }
}
