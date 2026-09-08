import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layanan IT',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PricingPage(),
    );
  }
}

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: const Text('Layanan IT'),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),

          child: Stack(
            children: [

              // ISI UTAMA KARTU
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // HEADER PAKET
                  Column(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        child: Icon(
                          Icons.laptop,
                          size: 55,
                          color: Colors.blue,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Paket Profesional',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      const Text(
                        'Solusi IT profesional untuk kebutuhan bisnis Anda.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // HARGA & DURASI
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Rp 5.000.000',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(width: 8),

                      const Text(
                        '/ proyek',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // FITUR
                  const Text(
                    'Fitur Layanan:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  _feature('Desain UI/UX Khusus'),
                  _feature('Setup Database'),
                  _feature('Integrasi API'),
                  _feature('Support & Maintenance'),

                  const SizedBox(height: 20),

                  // BUTTON
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Pilih Paket'),
                    ),
                  ),
                ],
              ),

              // BADGE REKOMENDASI
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Rekomendasi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ROW FITUR
  static Widget _feature(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 18,
          ),

          const SizedBox(width: 8),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}