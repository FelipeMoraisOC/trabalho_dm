import 'package:flutter/material.dart';

class Habito {
  final String nome;
  final String descricao;
  final TimeOfDay horario;
  final String imagem;

  Habito({
    required this.nome,
    required this.descricao,
    required this.horario,
    required this.imagem,
  });
}
