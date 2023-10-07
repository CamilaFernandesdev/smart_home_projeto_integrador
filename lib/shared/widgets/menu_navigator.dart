import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MenuNavigator extends StatelessWidget {
  final String menuName;
  final Icon iconMenu;
  final String indicatorPage;

  const MenuNavigator(
      {super.key,
      required this.menuName,
      required this.indicatorPage,
      required this.iconMenu});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        iconColor: CustomTheme.lightGrey,
        textColor: CustomTheme.lightGrey,
        hoverColor: CustomTheme.standardGrey,
        leading: iconMenu,
        title: Text(
          menuName,
        ),
        onTap: () {
          Navigator.of(context).pushNamed(indicatorPage);

          // Navigator.pop(context);
        });
  }
}
