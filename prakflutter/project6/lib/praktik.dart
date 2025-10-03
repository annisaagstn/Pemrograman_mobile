import 'package:flutter/material.dart';

void main() {
  runApp(const Annisaapp());
}

class Annisaapp extends StatelessWidget {
  const Annisaapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Annisa's Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column & Row Example"),
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.search),
            Icon(Icons.more_vert),
            FlutterLogo(size: 30.0),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Nganjuk merupakan salah satu kota di jawa timur dengan wisata yang beragam"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.red, size: 40),
                  Icon(Icons.star, color: Colors.red, size: 40),
                  Icon(Icons.star, color: Colors.red, size: 40),
                ],
              ),
              Image.asset(
                "assets/images/nganjuk.jpg",
                width: 150,
                height: 150,
              ),
              const Text(
                "Nganjuk - Jawa Timur",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 155, 15, 15),
                ),
                textAlign: TextAlign.center, // Memindahkan ke sini
              ),
              const MyStateful(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}

class MyStateful extends StatefulWidget {
  const MyStateful({super.key});

  @override
  State<MyStateful> createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  int vote = 0;

  void tambah() {
    setState(() {
      vote++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "vote: $vote",
          style: const TextStyle(fontSize: 16),
        ),
        ElevatedButton(
          onPressed: tambah,
          child: const Text("vote"),
        ),
      ],
    );
  }
}