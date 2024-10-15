import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthModel {
  // Replace with your actual API URL
  final String _apiUrl = 'https://swan.alisonsnewdemo.online/api/login?email_phone=8547541134&password=12345678';

  Future<bool> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        // Successful login
        return true; 
      } else {
        // Handle errors based on response status
        return false; 
      }
    } catch (e) {
      // Handle exceptions (e.g., network errors)
      print('Error: $e');
      return false; 
    }
  }
}
