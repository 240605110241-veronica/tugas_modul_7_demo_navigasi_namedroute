import 'package:flutter/material.dart';
import 'tujuan.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade700,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ini Halaman Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Banyak aplikasi memiliki beberapa layar untuk menampilkan '
                    'informasi yang berbeda. Contohnya, ada layar produk, dan '
                    'ketika pengguna mengklik produk, akan muncul layar dengan '
                    'detail produk tersebut.',
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
                    Icons.home,
                    size: 110,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Pertama, kita perlu membuat dua halaman atau "routes" '
                    'yang ingin kita tampilkan. Selanjutnya, gunakan perintah '
                    'Navigator.pushNamed() untuk berpindah dari halaman pertama '
                    'ke halaman kedua. Untuk kembali, gunakan Navigator.pop().',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Tujuan.routeName);
                  },
                  child: const Text('Ke halaman tujuan ›'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}