class UserModel {
  final String id;
  final String name;
  final String? email;
  final int age;
  final bool isActive;

  UserModel({
    required this.id,
    required this.name,
    this.email,
    required this.age,
    required this.isActive,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? 'Tidak ada ID',
      name: json['name'] ?? '',
      email: json['email'],
      age: json['age'] ?? 0,
      isActive: json['isActive'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'age': age,
      'isActive': isActive,
    };
  }
}