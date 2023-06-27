import 'dart:convert';
import 'package:http/http.dart';

import '../model/data.dart';

class ApiService {
  final endPoint = "https://reqres.in/api/users?page=2";

  Future<List<Data>> getData() async {
    Response response = await get(Uri.parse(endPoint));
    if (response.statusCode == 200) {
      Map<String, dynamic> json1 = jsonDecode(response.body);
      List<dynamic> body = json1['data'];
      List<Data> datas =
          body.map((dynamic item) => Data.fromJson1(item)).toList();
      return datas;
    } else {
      throw 'Data not found';
    }
  }
}
