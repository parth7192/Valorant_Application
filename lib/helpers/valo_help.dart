import 'dart:convert';
import 'package:http/http.dart' as http;
import '../modals/valo_modals.dart';

class Apis {
  static Future<ValoModel> getCharacter() async {
    final response = await http.get(
      Uri.parse('https://valorant-api.com/v1/agents'),
    );
    if (response.statusCode == 200) {
      return ValoModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw Exception('Failed to load Character');
    }
  }
}
