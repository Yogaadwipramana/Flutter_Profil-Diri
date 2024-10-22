import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(
          username: 'default_username',
          role: 'default_role',
          sekolah: 'default_sekolah',
          deskripsi:
              'default_deskripsi'), // Tempatkan nilai default di sini jika diperlukan
    ));

class Home extends StatelessWidget {
  final String username;
  final String role;
  final String sekolah;
  final String deskripsi;

  const Home(
      {super.key,
      required this.username,
      required this.role,
      required this.sekolah,
      required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context)
            .size
            .height, // Buat background memenuhi konten
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover, // Background mengikuti ukuran konten
          ),
        ),
        child: Center(
          // Membuat card berada di tengah
          child: SingleChildScrollView(
            // Menggunakan SingleChildScrollView agar bisa scroll secara vertikal
            child: Padding(
              padding: const EdgeInsets.all(20.0), // Menggunakan padding
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Posisikan konten di tengah vertikal
                children: <Widget>[
                  // Kotak Pertama (Profil)
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromRGBO(121, 113, 95, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(
                          16.0), // Menambahkan padding pada card
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 100.0,
                            backgroundImage:
                                AssetImage('assets/images/fotoprofil.jpg'),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            username,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18, color: Colors.white),
                          ),
                          Text(
                            role,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Page2(
                                      username: username,
                                      role: role,
                                      sekolah: sekolah,
                                      deskripsi:
                                          deskripsi), // Kirim username dan role
                                ),
                              );
                            },
                            child: const Text('See More'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Spacer antar Card

                  // Card Sekolah
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromRGBO(121, 113, 95, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Sekolah",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            sekolah, // Menampilkan nama sekolah dari input
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Spacer antar Card

                  // Card Deskripsi Singkat
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: const Color.fromRGBO(121, 113, 95, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Deskripsi Singkat",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            deskripsi, // Menampilkan deskripsi dari input
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Spacer antar Card
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
