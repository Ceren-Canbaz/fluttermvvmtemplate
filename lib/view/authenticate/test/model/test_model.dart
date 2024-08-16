import 'package:fluttermvvmtemplate/core/base/model/base_model.dart';

class TestModel extends BaseModel<TestModel> {
  TestModel({this.userId, this.id, this.title, this.completed});
  final int? userId;
  final int? id;
  final String? title;
  final bool? completed;

  TestModel copyWith({
    int? userId,
    int? id,
    String? title,
    bool? completed,
  }) {
    return TestModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }

  @override
  TestModel fromJson(Map<String, dynamic> json) {
    return TestModel(
      userId: json['userId'] != null ? json['userId'] as int : null,
      id: json['id'] != null ? json['id'] as int : null,
      title: json['title'] != null ? json['title'] as String : null,
      completed: json['completed'] != null ? json['completed'] as bool : null,
    );
  }
}
