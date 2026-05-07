import 'package:fitness_application/model/exercise_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WorkoutApiService {
  final String apiKey =
      '15716c0cdca2ea88ff093f2faaa6d639535b0b0417310fe06076eb1887bbba8c';

  Future<List<ExerciseModel>?> getExercises() async {
    final url = Uri.parse('https://api.example.com/workouts');
    final response = await http.get(url, headers: {'x-api-key': apiKey});

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);

      final exercise = data.map((item) {
        return ExerciseModel(
          id: item['id'].toString(),
          name: item['name'] ?? 'Name Not found',
          description: item['description'] ?? 'Description Not found',
        );
      }).toList();
      
      return exercise;
    } else {
      throw Exception('Failed to load workouts');
    }
  }
}
