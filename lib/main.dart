import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Login Profile',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _sekolahController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Form Profile",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                const SizedBox(height: 10),
                Text(
                  "Silahkan untuk mengisi form profile anda",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: _usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan username';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    hintText: 'Input nama anda',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan role';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  controller: _roleController,
                  decoration: InputDecoration(
                    labelText: 'Role',
                    hintText: 'Input role',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
                const SizedBox(height: 20),
                // Form Sekolah
                TextFormField(
                  controller: _sekolahController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan nama sekolah';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Sekolah',
                    hintText: 'Input nama sekolah',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
                const SizedBox(height: 20),
                // Form Deskripsi
                TextFormField(
                  controller: _deskripsiController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan deskripsi';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Deskripsi',
                    hintText: 'Input deskripsi diri',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                if (_usernameController.text.isEmpty ||
                    _roleController.text.isEmpty ||
                    _sekolahController.text.isEmpty ||
                    _deskripsiController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        'Isi form login dengan lengkap!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(
                        username: _usernameController.text,
                        role: _roleController.text,
                        sekolah: _sekolahController.text,
                        deskripsi: _deskripsiController.text,
                      ),
                    ),
                  );
                }
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
