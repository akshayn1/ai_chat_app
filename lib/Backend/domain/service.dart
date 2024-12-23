import 'package:dio/dio.dart';

class GeminiApiService {
  final Dio _dio = Dio();

  // Constructor to initialize the API key
  GeminiApiService();
  final String apiKey = "AIzaSyBpLr36jabmUwU5D8vUA1mp0YCCUZ9aQhs";
  // Base URL for the Gemini API
  final String _baseUrl =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent";

  // Method to call the API
  Future<Map<String, dynamic>> generateContent(String prompt) async {
    final url = "$_baseUrl?key=$apiKey";

    // JSON payload for the request
    final data = {
      "contents": [
        {
          "parts": [
            {"text": prompt}
          ]
        }
      ]
    };

    try {
      // Perform the POST request
      final response = await _dio.post(
        url,
        options: Options(
          headers: {
            "Content-Type": "application/json", // Set headers
          },
        ),
        data: data, // JSON payload
      );

      // Return the response data
      return response.data;
    } on DioException catch (e) {
      // Handle errors
      if (e.response != null) {
        throw Exception(
            "API Error: ${e.response?.statusCode}, ${e.response?.data}");
      } else {
        throw Exception("Network Error: ${e.message}");
      }
    }
  }
}
