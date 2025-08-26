class TaskModel {
  final int id;
  final String summary;
  final String description;
  final String status;

  TaskModel({
    required this.id,
    required this.summary,
    required this.description,
    required this.status,
  });

  TaskModel.fromJson(Map<String, dynamic> json)
    : id = (json['id'] as num).toInt(),
      summary = json['summary'],
      description = json['description'],
      status = json['status'];
}
