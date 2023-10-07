import 'package:flutter/material.dart';

import '../../shared/constants.dart';
import '../../shared/widgets/logo.dart';
import '../../shared/widgets/menu_navigator.dart';

Widget buildMenuDrawer() {
  return Drawer(
    child: ListView(
      children: [
        const DrawerHeader(child: LogoSmartApp(sizeLogo: 75)),
        for (final menuItem in MenuConstants.menuItems)
          MenuNavigator(
            menuName: menuItem['menuName'],
            iconMenu: menuItem['iconMenu'],
            indicatorPage: menuItem['indicatorPage'],
          ),
      ],
    ),
  );
}
