import 'package:flutter/material.dart';

void main() {
  runApp(const PraktikumApp());
}

class PraktikumApp extends StatelessWidget {
  const PraktikumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 2 Praktikum',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PraktikumPage(),
    );
  }
}

class PraktikumPage extends StatefulWidget {
  const PraktikumPage({super.key});

  @override
  State createState() => _PraktikumPageState();
}

class _PraktikumPageState extends State {
  bool _showImage = false; // state toggle gambar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Praktikum Tugas 2"),
      ),
      body: Column(
        children: [
          // Bagian teks panjang scrollable
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Aceh Barat, sebuah kabupaten di Provinsi Aceh, Indonesia, adalah wilayah yang kaya akan sejarah dan keindahan alam. Terletak di pantai barat Pulau Sumatra, kabupaten ini memiliki pemandangan yang memukau, mulai dari garis pantai yang landai hingga perbukitan yang hijau. Ibu kotanya, Meulaboh, dikenal sebagai kota perjuangan yang memiliki peran penting dalam sejarah perlawanan rakyat Aceh.\n\n"
                "Selain keindahan alamnya, Aceh Barat juga terkenal dengan kekayaan budayanya. Masyarakatnya menjunjung tinggi adat istiadat dan nilai-nilai keislaman yang kuat. Berbagai tradisi dan kesenian lokal masih dilestarikan, seperti tari Ratoeh Duek dan upacara adat lainnya. Kehidupan sosial di sini sangat erat, dengan semangat gotong royong yang tinggi di antara warganya.\n\n"
                "Wilayah ini juga memiliki potensi ekonomi yang besar, terutama di sektor pertanian dan perkebunan, seperti kelapa sawit dan karet. Kekayaan alamnya juga mencakup hasil laut yang melimpah. Meskipun pernah dilanda bencana Tsunami pada tahun 2004, masyarakat Aceh Barat menunjukkan ketangguhan luar biasa dan bangkit kembali untuk membangun daerah mereka menjadi lebih baik.\n\n"
                "Dengan sejarah yang panjang, budaya yang kuat, dan alam yang indah, Aceh Barat adalah permata tersembunyi di pantai barat Aceh. Kabupaten ini terus berbenah dan berkembang, menawarkan keramahan penduduknya serta pesona alamnya yang tak terlupakan bagi siapa saja yang mengunjunginya.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Bagian ImageView / Container
          Container(
            height: 200,
            width: double.infinity,
            color: _showImage ? Colors.transparent : Colors.grey[300],
            child: _showImage
                ? Image.asset(
                    'assets/flutter_logo.png', // pastikan ada di assets
                    fit: BoxFit.contain,
                  )
                : const Center(
                    child: Text(
                      "Warna Background",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
          ),

          const SizedBox(height: 10),

          // Tombol-tombol (layout horizontal)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showImage = !_showImage; // toggle gambar ↔ warna
                  });
                },
                child: Text(_showImage ? "Kembali ke Warna" : "Tampilkan Gambar"),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Tombol lain ditekan!")),
                  );
                },
                child: const Text("Tombol Lain"),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}