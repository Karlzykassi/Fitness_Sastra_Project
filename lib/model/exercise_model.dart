class ExerciseModel {
  final String id;
  final String name;
  final String description;

  ExerciseModel({
    required this.id,
    required this.name,
    required this.description,
  });
}

class DietModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;

  DietModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}
