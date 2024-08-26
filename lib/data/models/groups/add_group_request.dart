class AddGroupRequest {
  final String name;
  final int mainTeacherId;
  final int assistantTeacherId;

  AddGroupRequest({
    required this.name,
    required this.mainTeacherId,
    required this.assistantTeacherId,
  });

  Map<String, dynamic> toMap() => {
        "name": name,
        "main_teacher_id": mainTeacherId,
        "assistant_teacher_id": assistantTeacherId,
      };
}
