class TaskModel {
  final int? id;
  String summary;
  String? description;
  String status;

  TaskModel({
    this.id,
    required this.summary,
    this.description,
    required this.status,
  });

  TaskModel.fromJson(Map<String, dynamic> json)
    : id = (json['id'] as num).toInt(),
      summary = json['summary'],
      description = json['description'],
      status = json['status'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'summary': summary,
    'description': description,
    'status': status,
  };
}
