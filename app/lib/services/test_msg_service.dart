import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/test_msg_model.dart';
import '../utils/platform_utils.dart';

class TestMsgService {
  static const int _apiPort = 55555;
  static const String _testEndpoint = '/test';

  Future<TestMsg> fetchAlbum() async {
    final String apiHost = PlatformUtils.getApiHost();
    final Uri uri = Uri.parse('http://$apiHost:$_apiPort$_testEndpoint');

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return TestMsg.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      } else {
        throw Exception('Failed to load Album. Status: ${response.statusCode}, URI: $uri, Body: ${response.body}');
      }
    } catch (e) {
      throw Exception('Network error fetching album: $e. Attempted URI: $uri');
    }
  }
}