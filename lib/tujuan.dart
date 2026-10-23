import 'package:flutter/material.dart';

class Tujuan extends StatelessWidget {
  static const String routeName = '/tujuan';

  const Tujuan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ini Halaman Tujuan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Untuk berpindah ke halaman baru, gunakan metode '
                    'Navigator.push(). Metode push() menambahkan route baru '
                    'ke tumpukan route yang dikelola Navigator.',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 24),
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.beach_access,
                    size: 100,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Untuk menutup halaman kedua dan kembali ke halaman pertama, '
                    'gunakan Navigator.pop(). Perintah ini menghapus route saat '
                    'ini dari tumpukan Navigator.',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('‹ Kembali ke home'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}