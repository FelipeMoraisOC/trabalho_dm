import 'package:flutter/material.dart';
import 'package:trabalhodm/models/habito.dart';
import 'package:trabalhodm/widgets/habito_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Habito> habitos;
  const HomeScreen({super.key, required this.habitos});

  @override
  Widget build(BuildContext context) {
    if (habitos.isEmpty) {
      return const Center(child: Text("Nenhum hábito adicionado ainda 😴"));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: habitos.length,
      itemBuilder: (context, index) {
        return HabitoCard(habito: habitos[index]);
      },
    );
  }
}
