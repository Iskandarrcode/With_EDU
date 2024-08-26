import '../user/user.dart';

class Group {
  final int id;
  final String name;
  final int mainTeacherId;
  final int assistantTeacherId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final User mainTeacher;
  final User assistantTeacher;
  final List<User> students;

  Group({
    required this.id,
    required this.name,
    required this.mainTeacherId,
    required this.assistantTeacherId,
    required this.createdAt,
    required this.updatedAt,
    required this.mainTeacher,
    required this.assistantTeacher,
    required this.students,
  });

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json['id'] ?? -1,
        name: json['name'] ?? 'null',
        mainTeacherId: json['main_teacher_id'] ?? -1,
        assistantTeacherId: json['assistant_teacher_id'] ?? -1,
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        mainTeacher: User.fromJson(json['main_teacher'] ?? {}),
        assistantTeacher: User.fromJson(json['assistant_teacher'] ?? {}),
        students: (json['students'] as List<dynamic>?)
                ?.map((e) => User.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'main_teacher_id': mainTeacherId,
        'assistant_teacher_id': assistantTeacherId,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
        'main_teacher': mainTeacher.toJson(),
        'assistant_teacher': assistantTeacher.toJson(),
        'students': students.map((e) => e.toJson()).toList(),
      };

  Group copyWith({
    int? id,
    String? name,
    int? mainTeacherId,
    int? assistantTeacherId,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? mainTeacher,
    User? assistantTeacher,
    List<User>? students,
  }) =>
      Group(
        id: id ?? this.id,
        name: name ?? this.name,
        mainTeacherId: mainTeacherId ?? this.mainTeacherId,
        assistantTeacherId: assistantTeacherId ?? this.assistantTeacherId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        mainTeacher: mainTeacher ?? this.mainTeacher,
        assistantTeacher: assistantTeacher ?? this.assistantTeacher,
        students: students ?? this.students,
      );

  @override
  String toString() {
    return 'Group(id: $id, name: $name, mainTeacherId: $mainTeacherId, assistantTeacherId: $assistantTeacherId, createdAt: $createdAt, updatedAt: $updatedAt, mainTeacher: ${mainTeacher.toString()}, assistantTeacher: ${assistantTeacher.toString()}, students: $students)';
  }
}
