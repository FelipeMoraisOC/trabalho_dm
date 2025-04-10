import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Estilo da status/navigation bar
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.red,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        colorScheme: const ColorScheme.light(
          primary: Colors.red,
          secondary: Colors.redAccent,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'APP FODA'),
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
  final List<Widget> _telas = [];
  List<String> _habitos = [];


  @override
  void initState() {
    super.initState();
    pedirPermissoes();
    _telas.addAll([
      telaPrincipal(),
      configuracoes(),
    ]);
  }

  Future<void> pedirPermissoes() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.microphone,
      Permission.storage,
      Permission.photos,
      Permission.videos,
      Permission.audio,
      Permission.location,
      Permission.contacts,
      Permission.sms,
      Permission.phone,
      Permission.calendarFullAccess,
    ].request();

    statuses.forEach((permissao, status) {
      if (status.isGranted) {
        print("Permissão concedida para: $permissao");
      } else {
        print("Permissão negada para: $permissao");
      }
    });
  }

  Widget telaPrincipal() {
  if (_habitos.isEmpty) {
    return const Center(
      child: Text("Nenhum hábito adicionado ainda 😴"),
    );
  }

  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: _habitos.length,
    itemBuilder: (context, index) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // PARTE ESQUERDA (Texto)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _habitos[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Criado recentemente",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              // PARTE DIREITA (Imagem ou ícone)
              const Icon(Icons.image, size: 48, color: Colors.redAccent),
            ],
          ),
        ),
      );
    },
  );
}



  Widget configuracoes() {
    return const Center(
      child: Text("Configurações aqui 🛠️"),
    );
  }

  void _mostrarDialogAdicionarHabito() {
    String novoHabito = "";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Adicionar Hábito"),
          content: TextField(
            onChanged: (value) {
              novoHabito = value;
            },
            decoration: const InputDecoration(hintText: "Ex: Beber água"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Cancelar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
  ),
  child: const Text("Adicionar"),
  onPressed: () {
    if (novoHabito.trim().isNotEmpty) {
      setState(() {
        _habitos.add(novoHabito.trim());
      });
    }
    Navigator.of(context).pop();
  },
),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: 'APP FODA',
                applicationVersion: '1.0.0',
                applicationIcon: const Icon(Icons.star, color: Colors.red),
                children: const [Text('Aplicativo de controle de hábitos diários.')],
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'MENUZINHO TOP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text('Meus Hábitos'),
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Estatísticas'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Sobre'),
            ),
          ],
        ),
      ),
      body: _indiceAtual == 0 ? telaPrincipal() : configuracoes(),

      floatingActionButton: FloatingActionButton(
        onPressed: _mostrarDialogAdicionarHabito,
        child: const Icon(Icons.add),
      ),
     bottomNavigationBar: BottomNavigationBar(
  currentIndex: _indiceAtual,
  onTap: (index) {
    setState(() {
      _indiceAtual = index;
    });
  },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }
}
