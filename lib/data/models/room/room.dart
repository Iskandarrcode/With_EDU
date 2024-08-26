part 'day.dart';

part 'available_hours.dart';

class Room {
  int id;
  String name;
  String description;
  int capacity;
  String createdAt;
  String updatedAt;
  List<AvailableHours> availableHours;

  Room({
    required this.id,
    required this.name,
    required this.description,
    required this.capacity,
    required this.createdAt,
    required this.updatedAt,
    required this.availableHours,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      capacity: json['capacity'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      availableHours: (json['available_hours'] as List)
          .map((item) => AvailableHours.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'capacity': capacity,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'available_hours': availableHours.map((item) => item.toJson()).toList(),
    };
  }
}
