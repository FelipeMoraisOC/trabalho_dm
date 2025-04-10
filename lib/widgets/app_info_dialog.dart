import 'package:flutter/material.dart';
import 'package:trabalhodm/core/app_colors.dart';

class AppInfoDialog extends StatelessWidget {
  const AppInfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.info_outline),
      onPressed: () {
        showAboutDialog(
          context: context,
          applicationName: 'Hábitos Diários',
          applicationVersion: '1.0.0',
          applicationIcon: const Icon(Icons.star, color: AppColors.primary),
          children: const [Text('Aplicativo de controle de hábitos diários.')],
        );
      },
    );
  }
}
