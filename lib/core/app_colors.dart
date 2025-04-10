import 'package:flutter/material.dart';

class AppColors {
  // Cores principais do aplicativo (baseadas em tons terrosos e marrons)
  static const Color primary = Color(0xFF6F4E37); // Marrom café (principal)
  static const Color secondary = Color(
    0xFFD7CCC8,
  ); // Marrom claro/bege (fundo, contraste)
  static const Color accent = Color(0xFF8D6E63); // Marrom rosado (realce)

  // Cores de fundo
  static const Color backgroundLight = Color(0xFFF5F5F5); // Cinza muito claro
  static const Color backgroundDark = Color(0xFF3E2723); // Marrom muito escuro

  // Cores de texto
  static const Color textLight = Color(0xFF3E2723); // Texto escuro
  static const Color textDark = Color(0xFFFFFFFF); // Texto claro

  // Cores de erro e sucesso
  static const Color error = Color(0xFFD32F2F); // Vermelho padrão Material
  static const Color success = Color(0xFF388E3C); // Verde Material

  // Botões e elementos interativos
  static const Color buttonLight = Color(0xFFA1887F); // Marrom médio
  static const Color buttonDark = Color(0xFF5D4037); // Marrom escuro

  // Sombra e bordas
  static const Color shadow = Color(0xFFBCAAA4); // Sombra marrom claro
  static const Color border = Color(0xFF8D6E63); // Mesmo tom do accent
}
