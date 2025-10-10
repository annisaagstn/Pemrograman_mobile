import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile & Counter App',
      theme: ThemeData(
        primaryColor: Color(0xFFFFC1D1),
        scaffoldBackgroundColor: Color(0xFFFFF8F5),
      ),
      home: MenuUtama(),
    );
  }
}

class MenuUtama extends StatefulWidget {
  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  int currentIndex = 0;

  final List<Widget> pages = [
    ProfilPage(),
    CounterPage(),
  ];

  void pindahHalaman(int index) {
    setState(() {
      currentIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          currentIndex == 0 ? 'Profil Mahasiswa' : 'Counter App',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFFFC1D1),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFFFF0EB),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFFC1D1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Annisa',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '2341760032',
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Color(0xFFFFA3B1)),
              title: Text('Profil', style: GoogleFonts.poppins(fontSize: 16)),
              onTap: () {
                pindahHalaman(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Color(0xFFFFA3B1)),
              title: Text('Counter', style: GoogleFonts.poppins(fontSize: 16)),
              onTap: () {
                pindahHalaman(1);
              },
            ),
          ],
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Color(0xFFFFC1D1),
        selectedItemColor: Color(0xFFFFA3B1),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Counter',
          ),
        ],
      ),
    );
  }
}

// Halaman Profil (StatelessWidget)
class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Flutter Logo
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterLogo(size: 40),
              ],
            ),
            SizedBox(height: 20),

            // Foto Profil
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                'assets/images/profile.jpg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Placeholder(
                    fallbackWidth: 120,
                    fallbackHeight: 120,
                    color: Colors.grey,
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            Text(
              'Annisa',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 5),

            Text(
              'NIM: 2341760032',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),

            // Container Institusi
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFFFFC1D1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Politeknik Negeri Malang',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 30),

            // Row Email dengan Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Color(0xFFFFA3B1), size: 20),
                SizedBox(width: 8),
                Text(
                  'annisaagustina84@gmail.com',
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Row Telepon dengan Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Color(0xFFFFA3B1), size: 20),
                SizedBox(width: 8),
                Text(
                  '085745505279',
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman Counter (StatefulWidget)
class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int angka = 0;

  void tambahAngka() {
    setState(() {
      angka = angka + 1;
    });
  }

  void kurangiAngka() {
    setState(() {
      angka = angka - 1;
    });
  }

  void resetAngka() {
    setState(() {
      angka = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF8F5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Jumlah saat ini',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),

            Text(
              '$angka',
              style: GoogleFonts.poppins(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFA3B1),
              ),
            ),
            SizedBox(height: 30),

            // Row untuk tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Kurang (ElevatedButton)
                ElevatedButton(
                  onPressed: kurangiAngka,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF74B9FF),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(Icons.remove, color: Colors.white),
                ),
                SizedBox(width: 15),

                // Tombol Reset (OutlinedButton)
                OutlinedButton(
                  onPressed: resetAngka,
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                    side: BorderSide(color: Color(0xFFFFC1D1), width: 2),
                  ),
                  child: Icon(Icons.refresh, color: Color(0xFFFFC1D1)),
                ),
                SizedBox(width: 15),

                // Tombol Tambah (ElevatedButton)
                ElevatedButton(
                  onPressed: tambahAngka,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFA3B1),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      // FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: tambahAngka,
        backgroundColor: Color(0xFFFFA3B1),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}