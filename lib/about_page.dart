import 'package:flutter/material.dart';
import 'package:pert3/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'About Cyper Shop',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Membungkus body dengan SingleChildScrollView untuk menghindari overflow
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.brown, Colors.amber.shade100],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo Cyper Shop di halaman About
              Image.asset(
                'assets/logo.png', // Ganti dengan path gambar logo yang sesuai
                height: 150,
              ),
              const SizedBox(height: 20),
              const Text(
                'Filosofi Logo Cyper Shop',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Logo Cyper Shop yang berbentuk beruang melambangkan kekuatan, ketahanan, dan kepercayaan. '
                'Beruang yang bersahabat menunjukkan bahwa kami berkomitmen untuk memberikan pelayanan yang ramah dan dapat dipercaya. '
                'Toko kami mengutamakan kepuasan pelanggan dengan menyediakan barang-barang berkualitas tinggi dan harga yang terjangkau.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors
                      .black87, // Mengganti warna font menjadi lebih gelap
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Di Cyper Shop, kami percaya bahwa setiap pelanggan layak mendapatkan yang terbaik. '
                'Koleksi kami dirancang untuk memenuhi kebutuhan fashion modern dengan tetap menjaga kualitas dan harga yang bersahabat. '
                'Kami selalu berusaha menjadi toko yang terpercaya, memberikan pengalaman belanja yang menyenangkan dan mudah.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors
                      .black87, // Mengganti warna font menjadi lebih gelap
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              const Text(
                'Terima kasih telah mempercayai Cyper Shop sebagai tempat belanja pilihan Anda!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors
                      .black87, // Mengganti warna font menjadi lebih gelap
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}
