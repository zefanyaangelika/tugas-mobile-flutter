import 'user_model.dart';

void main() {
  // Simulasi JSON dari API
  final jsonResponse = {
    'name': 'Budi Santoso',
    'age': 22,
  };

  // Konversi JSON ke Objek
  final user = UserModel.fromJson(jsonResponse);


  // Konversi kembali Objek ke JSON
}