import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String username;
  final String role;
  final String sekolah;
  final String deskripsi;

  const Page2({super.key, required this.username, required this.role, required this.sekolah, required this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Page 2',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                  height: 100), // Spacer untuk memberi jarak dari AppBar

              // Bagian Foto dan Nama
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage('assets/images/fotoprofil.jpg'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      username, // Menampilkan nama dari input
                      style: const TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      role, // Menampilkan nama sekolah dari input
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40), // Spacer antar foto dan card

              // Card Information
              IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    // Card About Me
                    SizedBox(
                      width:
                          double.infinity, // Membuat lebar sesuai dengan parent
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color.fromRGBO(121, 113, 95, 1),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Text(
                                "About Me",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                "Saya pemuda kelahiran di Bogor tahun 2007 saat ini sedang ditempa di SMK Wikrama Bogor, saya mampu bekerja secara individu maupun berkolaborasi dengan tim, saya berumur 16 Tahun, meskipun umur saya terbilang masih muda tetapi saya memiliki beberapa skill yang dapat diandalkan.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Card History
                    SizedBox(
                      width:
                          double.infinity, // Membuat lebar sesuai dengan parent
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color.fromRGBO(121, 113, 95, 1),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Text(
                                "History",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                "Saya SD sekolah di SD 1 Cigombong, lalu SMP di SMP 01 Cigombong, dan sekarang sedang menempa pendidikan di SMK Wikrama Bogor.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Card Skills
                    SizedBox(
                      width:
                          double.infinity, // Membuat lebar sesuai dengan parent
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color.fromRGBO(121, 113, 95, 1),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Text(
                                "Skills",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                "• HTML\n• PHP\n• CSS\n• Laravel\n• Tailwind\n",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
