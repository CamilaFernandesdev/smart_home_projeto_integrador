import 'package:flutter/material.dart';
import '../theme/theme.dart';

Color yellow = CustomTheme.yellow;

class LogoSmartApp extends StatelessWidget {
  const LogoSmartApp({super.key, required this.sizeLogo});

  final double sizeLogo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Icon(
            Icons.circle_outlined,
            size: sizeLogo,
            color: yellow,
            shadows: [
              BoxShadow(
                color: yellow,
                blurRadius: sizeLogo / 10,
                blurStyle: BlurStyle.solid
              )
            ],
          ),
          Icon(
            Icons.lightbulb_rounded,
            size: sizeLogo * 0.6,
            color: yellow,
            shadows: [
              BoxShadow(
                color: yellow,
                blurRadius: sizeLogo / 10,
                blurStyle: BlurStyle.solid
              )]
          )
        ],
      ),
    );
  }
}
