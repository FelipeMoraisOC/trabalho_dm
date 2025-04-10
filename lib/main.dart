import 'package:flutter/material.dart';

import 'package:trabalhodm/core/themes.dart';
import 'package:trabalhodm/models/habito.dart';
import 'package:trabalhodm/modules/habito/add_habito_dialog.dart';
import 'package:trabalhodm/modules/home/home_screen.dart';
import 'package:trabalhodm/widgets/app_bottom_navigation.dart';
import 'package:trabalhodm/widgets/app_info_dialog.dart';
import 'package:trabalhodm/widgets/drawer_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hábitos Diários',
      theme: AppTheme.lightTheme, //Tema no arquivo core/themes.dart
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Hábitos Diários'),
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
  int _indiceAtual = 0;
  final List<Habito> _habitos = [
    Habito(
      nome: 'Café da Manhã',
      descricao: 'Aveia, banana, maçã',
      horario: TimeOfDay(hour: 06, minute: 30),
      imagem: 'assets/images/cafe-mockup.jpg',
    ),
    Habito(
      nome: 'Academia',
      descricao: 'Treinar academia',
      horario: TimeOfDay(hour: 7, minute: 30),
      imagem: 'assets/images/academia-mockup.webp',
    ),
    Habito(
      nome: 'Estudar',
      descricao: 'Arvores e grafos',
      horario: TimeOfDay(hour: 9, minute: 00),
      imagem: 'assets/images/estudos-mockup.webp',
    ),
  ];
  final List<Widget> _telas = [];

  @override
  void initState() {
    super.initState();
    _telas.addAll([HomeScreen(habitos: _habitos), configuracoes()]);
  }

  Widget configuracoes() {
    return const Center(child: Text('Configurações aqui 🛠️'));
  }

  @override
  Widget build(BuildContext context) {
    Future<void> mostrarDialogAdicionarHabito() async {
      final resultado = await showDialog<Habito>(
        context: context,
        builder: (BuildContext context) {
          return const AddHabitoDialog();
        },
      );
      if (resultado != null) {
        setState(() {
          _habitos.add(resultado);
        });
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: [AppInfoDialog()]),
      drawer: DrawerWidget(),
      body: _indiceAtual == 0 ? HomeScreen(habitos: _habitos) : configuracoes(),

      floatingActionButton: FloatingActionButton(
        onPressed: mostrarDialogAdicionarHabito,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: AppBottomNavigation(
        currentIndex: _indiceAtual,
        onTap: (index) {
          setState(() => _indiceAtual = index);
        },
      ),
    );
  }
}
