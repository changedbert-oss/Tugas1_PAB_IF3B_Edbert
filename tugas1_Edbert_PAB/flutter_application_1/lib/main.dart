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
      title: 'Galeri Foto',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GaleriFotoScreen(),
    );
  }
}

class GaleriFotoScreen extends StatelessWidget {
  const GaleriFotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Utama dari URL
            Image.network(
              'https://picsum.photos/id/88/300/200',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            // Judul Gambar
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Jalan di Barcelona',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const Divider(indent: 16, endIndent: 16),

            // Baris Lokasi
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Icon(Icons.place, color: Colors.red),
                  SizedBox(width: 8),
                  Text(
                    'Lokasi: Barcelona, Spanyol',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),

            // Baris Tanggal Publikasi
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Icon(Icons.calendar_month, color: Colors.blue),
                  SizedBox(width: 8),
                  Text(
                    'Publikasi: 13 Agustus 2013',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),

            const Divider(indent: 16, endIndent: 16),

            // Bagian Deskripsi (Judul)
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                bottom: 4.0,
              ),
              child: Text(
                'Deskripsi',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            // Bagian Deskripsi (Teks)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',
                style: TextStyle(fontSize: 14, height: 1.5),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
