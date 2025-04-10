import 'package:flutter/material.dart';
import 'package:trabalhodm/core/app_colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.primary),
            child: Text(
              'MENUZINHO TOP',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: Icon(Icons.check_circle_outline),
            title: Text('Meus Hábitos'),
          ),
          ListTile(leading: Icon(Icons.bar_chart), title: Text('Estatísticas')),
          ListTile(leading: Icon(Icons.info), title: Text('Sobre')),
        ],
      ),
    );
  }
}
