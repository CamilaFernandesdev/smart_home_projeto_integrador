import 'package:flutter/material.dart';

class MenuConstants {
  static const List<Map<String, dynamic>> menuItems = [
    {
      'menuName': 'Home',
      'iconMenu': Icon(Icons.broadcast_on_personal),
      'indicatorPage': '/home',
    },
    {
      'menuName': 'Profile',
      'iconMenu': Icon(Icons.account_circle_rounded),
      'indicatorPage': '/profile',
    },
    {
      'menuName': 'About',
      'iconMenu': Icon(Icons.book),
      'indicatorPage': '/about',
    },
    // Add more menu items here
  ];
}
