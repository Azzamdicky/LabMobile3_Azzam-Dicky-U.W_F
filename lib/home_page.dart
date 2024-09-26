import 'package:flutter/material.dart';
import 'package:pert3/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var namauser;

  void _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      namauser = prefs.getString('username') ?? 'Pengguna';
    });
  }

  @override
  void initState() {
    super.initState();
    _loadUsername(); // Panggil di initState agar username langsung muncul
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Cyper Shop',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.brown, Colors.amber.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Cyper Store di halaman home
            Image.asset(
              'assets/logo.png', // Pastikan path gambar benar
              height: 150,
            ),
            const SizedBox(height: 30), // Spasi setelah logo
            // Teks sambutan
            Text(
              'Selamat Datang di Cyper Shop, $namauser!',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Teks deskripsi toko
            const Text(
              'Kami menyediakan koleksi mainan dengan kualitas terbaik dan harga terjangkau. Jelajahi koleksi kami dan temukan mainan mainan menarik',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      drawer: const Sidemenu(), // Sidebar menu jika diperlukan
    );
  }
}
