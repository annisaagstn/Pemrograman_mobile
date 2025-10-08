import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile & Counter",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFC7B5A3),
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFA87A64),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF725237),
          selectedItemColor: Color(0xFFC0AC98),
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const MenuUtama(),
    );
  }
}

class MenuUtama extends StatefulWidget {
  const MenuUtama({super.key});

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  int currentIndex = 0;

  final pages = const [
    ProfilPage(),
    CounterPage(),
  ];

  void _navigateTo(int index) {
    setState(() {
      currentIndex = index;
    });
    Navigator.pop(context); // drawer otomatis menutup
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          currentIndex == 0 ? "My Profile" : "Counter App",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),

      // 🔹 Drawer navigasi (tanpa menu Contact)
      drawer: Drawer(
        backgroundColor: const Color(0xFFBBA690),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFFA87A64),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Annisa",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "2341760032",
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person_outline, color: Colors.white),
              title:
                  Text("Profile", style: GoogleFonts.poppins(color: Colors.white)),
              onTap: () => _navigateTo(0),
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline, color: Colors.white),
              title:
                  Text("Counter", style: GoogleFonts.poppins(color: Colors.white)),
              onTap: () => _navigateTo(1),
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Counter",
          ),
        ],
      ),
    );
  }
}

// -------------------- HALAMAN PROFIL --------------------
class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 🔹 Flutter logo di kanan atas halaman
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 10),
              child: FlutterLogo(size: 35),
            ),
          ),
          const SizedBox(height: 20),

          // 🔹 Foto profil + placeholder
          ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Image.asset(
              "assets/images/profile.jpg",
              width: 120,
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Placeholder(
                  fallbackWidth: 120,
                  fallbackHeight: 120,
                  color: Color(0xFFB0977C),
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          // 🔹 Data diri
          Text(
            "Annisa",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF3D200F),
            ),
          ),
          const SizedBox(height: 8),
          Text("NIM : 2341760032",
              style: GoogleFonts.poppins(fontSize: 16)),
          Text("Email : annisaagustina84@gmail.com",
              style: GoogleFonts.poppins(fontSize: 16)),
          Text("WhatsApp : 085745505279",
              style: GoogleFonts.poppins(fontSize: 16)),
          const SizedBox(height: 25),

          // 🔹 Institusi
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: BoxDecoration(
              color: const Color(0xFFB0977C),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              "Politeknik Negeri Malang",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// -------------------- HALAMAN COUNTER --------------------
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void tambah() => setState(() => count++);
  void kurang() => setState(() => count--);
  void reset() => setState(() => count = 0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Jumlah saat ini",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF3D200F),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "$count",
            style: GoogleFonts.poppins(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFA87A64),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: kurang,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8D7865),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: reset,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFBBA690),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                child: const Icon(Icons.refresh),
              ),
              ElevatedButton(
                onPressed: tambah,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA87A64),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15),
                ),
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
