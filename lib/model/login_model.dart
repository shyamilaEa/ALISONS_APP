import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthModel {
  final String apiUrl = "https://swan.alisonsnewdemo.online/api/login?email_phone=8547541134&password=12345678"; 

  Future<void> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "email": email,
          "password": password,
        }),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print("Login successful: $data");
      } else {
        print("Login failed: ${response.body}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
