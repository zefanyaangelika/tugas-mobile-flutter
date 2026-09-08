import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_mobile/user_model.dart';

void main() {
  test('UserModel fromJson dan toJson', () {
    final jsonResponse = {
      'name': 'Budi Santoso',
      'age': 22,
    };

    final user = UserModel.fromJson(jsonResponse);

    expect(user.name, 'Budi Santoso');
    expect(user.id, 'Tidak ada ID');
    expect(user.email, null);
    expect(user.age, 22);
    expect(user.isActive, false);

    expect(user.toJson()['name'], 'Budi Santoso');
    expect(user.toJson()['age'], 22);
  });
}