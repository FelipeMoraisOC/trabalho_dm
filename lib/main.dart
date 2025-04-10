import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Aplicação',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Nexa'),
      home: const MyHomePage(title: 'Página Inicial'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List _widgetOptions = [
    Text('Índice 0: Home'),
    Text('Índice 1: Business'),
    Text('Índice 1: School'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(widget.title),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
<<<<<<< HEAD
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Segunda',
          ),
=======
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
>>>>>>> ee81c94ba23bfa2684a59a7b534424cf04f08919
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
<<<<<<< HEAD
=======
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
>>>>>>> ee81c94ba23bfa2684a59a7b534424cf04f08919
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Incrementar',
<<<<<<< HEAD
        backgroundColor: const Color.fromARGB(255, 255, 17, 156),
=======
        backgroundColor: Colors.red,
>>>>>>> ee81c94ba23bfa2684a59a7b534424cf04f08919
        child: Icon(Icons.add),
      ),
    );
  }
}
