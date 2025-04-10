import 'package:flutter/material.dart';
import 'package:trabalhodm/core/app_colors.dart';
import 'package:trabalhodm/models/habito.dart';

class HabitosCard extends StatelessWidget {
  final Habito habito;
  const HabitosCard({super.key, required this.habito});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          children: [
            // IMAGEM LATERAL
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 80,
                height: 80,
                color: AppColors.primary,
                child: const Icon(
                  Icons.image,
                  size: 40,
                  color: AppColors.secondary,
                ),
              ),
            ),
            const SizedBox(width: 16),
            // TEXTO DO HÁBITO
            Expanded(
              child: SizedBox(
                height: 80, // Mesmo valor da imagem
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      habito.nome,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      habito.descricao,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textLight,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "⏰ ${habito.horario.format(context)}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.textLight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
