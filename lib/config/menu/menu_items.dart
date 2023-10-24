import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItem = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Card',
    subtitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'ProgressIndicators',
    subtitle: 'Generales y Controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'SnackBarIndicators',
    subtitle: 'Generales y Controlados',
    link: '/snackbar',
    icon: Icons.info_outline_rounded,
  ),
];
