import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DatabaseRead {
  Future<List<String>> fetchSessions() async {
    final response = await http.get(
        'https://us-east-1.aws.webhooks.mongodb-realm.com/api/client/v2.0/app/owl_hero-zizlj/service/owlhero_webhook/incoming_webhook/webhook0');

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print(data);
      return data[0]["results"] as List<String>;

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Sessions!!');
    }
  }
}

class OwlPicturesDataModel {
  final List<String> urlStrings;

  const OwlPicturesDataModel({this.urlStrings});

  factory OwlPicturesDataModel.fromJson(Map<String, List<String>> json) {
    return OwlPicturesDataModel(
      urlStrings: json['result'],
    );
  }
}
