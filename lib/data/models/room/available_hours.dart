part of 'room.dart';

class AvailableHours {
  int id;
  int roomId;
  int dayId;
  String startTime;
  String endTime;
  String createdAt;
  String updatedAt;
  Day day;

  AvailableHours({
    required this.id,
    required this.roomId,
    required this.dayId,
    required this.startTime,
    required this.endTime,
    required this.createdAt,
    required this.updatedAt,
    required this.day,
  });

  factory AvailableHours.fromJson(Map<String, dynamic> json) {
    return AvailableHours(
      id: json['id'],
      roomId: json['room_id'],
      dayId: json['day_id'],
      startTime: json['start_time'],
      endTime: json['end_time'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      day: Day.fromJson(json['day']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'room_id': roomId,
      'day_id': dayId,
      'start_time': startTime,
      'end_time': endTime,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'day': day.toJson(),
    };
  }
}

