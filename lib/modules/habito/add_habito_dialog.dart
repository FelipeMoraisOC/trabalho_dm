import 'package:flutter/material.dart';
import 'package:trabalhodm/core/app_colors.dart';
import 'package:trabalhodm/models/habito.dart';

class AddHabitoDialog extends StatefulWidget {
  const AddHabitoDialog({super.key});

  @override
  State<AddHabitoDialog> createState() => _AddHabitoDialogState();
}

class _AddHabitoDialogState extends State<AddHabitoDialog> {
  String nome = "";
  String descricao = "";
  TimeOfDay horario = TimeOfDay.now();
  String imagem = ""; //assets/images/mockup.png

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Adicionar Hábito"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            onChanged: (value) => nome = value,
            decoration: const InputDecoration(hintText: "Ex: Beber água"),
          ),
          TextField(
            decoration: const InputDecoration(labelText: "Descrição"),
            onChanged: (value) => descricao = value,
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () async {
              final selecionado = await showTimePicker(
                context: context,
                initialTime: horario,
              );
              if (selecionado != null) {
                setState(() {
                  horario = selecionado;
                });
              }
            },
            child: Text("Escolher horário: ${horario.format(context)}"),
          ),
        ],
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
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.backgroundLight,
          ),
          child: const Text("Adicionar"),
          onPressed: () {
            Navigator.of(context).pop(
              Habito(
                nome: nome,
                descricao: descricao,
                horario: horario,
                imagem: imagem,
              ),
            );
          },
        ),
      ],
    );
  }
}
