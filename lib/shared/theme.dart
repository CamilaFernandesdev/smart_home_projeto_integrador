import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 3, 25, 47); //(0xff021B33);
final Color yellow = Colors.yellow.shade600;
final turnOnColorContainer = Colors.amber.shade800;

class CustomTheme {
  // static Color darkBlue = Color.fromARGB(255, 18, 38, 48);
  // static Color marineBlue = Color.fromARGB(143, 4, 45, 96);
  static Color black = Colors.black87;
  static Color standardGrey = Colors.grey.shade500;
  static Color yellow = Colors.yellow.shade600;
  static Color lightGrey = Colors.grey.shade200;
  static const Color darkBlue = Color.fromARGB(255, 3, 25, 47);
  static const Color darkBlueTransparent =
      Color.fromARGB(200, 3, 25, 47); //(0xff021B33);
  static Color turnOffColorContainer = Colors.grey.shade700;
  static Color turnOnColorContainer = Colors.amber.shade800;
  static Color darkGrey = Colors.grey.shade900;

  static ThemeData testTheme = ThemeData(
    useMaterial3: false,
    primaryColor: darkBlue,
    scaffoldBackgroundColor: lightGrey,
    appBarTheme: AppBarTheme(
        color: darkBlue,
        elevation: 0,
        centerTitle: true,
        foregroundColor: lightGrey),
    drawerTheme: const DrawerThemeData(
      backgroundColor: darkBlue,
      surfaceTintColor: darkBlue,
    ),
    dividerColor: darkBlue,
    iconTheme: IconThemeData(color: lightGrey),
    primaryIconTheme: IconThemeData(color: yellow),
    colorScheme: ColorScheme.fromSwatch().copyWith(primary: darkBlue),
    extensions: const <ThemeExtension<dynamic>>[
      CustomDetailsTheme(
        colorTheme: Colors.orange,
        decorationAboutUs: BoxDecoration(
          color: darkBlue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: false,
      primaryColor: black,
      primaryColorDark: black,
      appBarTheme: AppBarTheme(
        backgroundColor: black,
        foregroundColor: turnOnColorContainer,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: turnOnColorContainer),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: black,
        scrimColor: black,
        surfaceTintColor: black,
        shadowColor: black,
        elevation: 25,
      ),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: black,
        primaryContainer: lightGrey,
      ));

  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    primaryColor: darkBlue,
    scaffoldBackgroundColor: lightGrey,
    iconTheme: IconThemeData(color: lightGrey),
    primaryIconTheme: IconThemeData(color: lightGrey),
    appBarTheme: AppBarTheme(
      color: darkBlue,
      elevation: 0,
      centerTitle: true,
      foregroundColor: lightGrey,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: darkBlue,
      scrimColor: darkBlueTransparent,
      surfaceTintColor: darkBlue,
      shadowColor: darkBlue,
      elevation: 25,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 20,
      foregroundColor: lightGrey,
      backgroundColor: yellow,
      splashColor: turnOnColorContainer,
      hoverColor: turnOnColorContainer,
      hoverElevation: 20,
      mouseCursor: MaterialStateMouseCursor.textable,
      highlightElevation: 70,
      extendedPadding: const EdgeInsets.all(12),

      // width: size * 5,
      // alignment: Alignment.center,
      // decoration: BoxDecoration(
      //   color: yellow,
      //   gradient: LinearGradient(
      //       colors: [turnOnColorContainer, yellow, turnOnColorContainer],
      //       transform: GradientRotation(180),
      //       tileMode: TileMode.repeated),
      // ),
    ),
    colorScheme: const ColorScheme.light().copyWith(
        primary: darkBlue,
        onPrimary: lightGrey,
        primaryContainer: darkBlue,
        secondary: lightGrey,
        onSecondary: lightGrey,
        secondaryContainer: darkBlue,
        tertiaryContainer: lightGrey,
        onSurface: lightGrey,
        onBackground: lightGrey),
    dividerColor: yellow,
  );

  BoxDecoration designerContainer([bool powerOn = false]) {
    return BoxDecoration(
      color: powerOn ? turnOnColorContainer : turnOffColorContainer,
      borderRadius: BorderRadius.circular(15),
      // boxShadow: [
      //   // button right shadow
      //   BoxShadow(
      //     color: darkGrey,
      //     blurRadius: 35,
      //     blurStyle: BlurStyle.solid,
      //   ),
      //   // button left shadow
      //   BoxShadow(
      //     color: lightGrey,
      //     blurRadius: 35,
      //     blurStyle: BlurStyle.solid,
      //   )
      // ]
    );
  }

  Color changeColorPowerSwitch([bool powerOn = false]) {
    return powerOn ? yellow : black;
  }

  // Center decorationLogoProjetoIntegrador(
  //   [double size = 50], void Function routeAbountUs) => Center(
  //     child: FloatingActionButton(
  //         height: size,
  //         width: size * 5,
  //         alignment: Alignment.center,
  //         decoration: BoxDecoration(
  //           color: yellow,
  //           gradient: LinearGradient(
  //             colors: [turnOnColorContainer, yellow, turnOnColorContainer],
  //             transform: GradientRotation(180),
  //             tileMode: TileMode.repeated
  //           ),
  //         ),
  //         child: Text('Projeto Integrador'),
  //         onPressed: routeAbountUs),
  //   );

  SliverAppBar sliverAppBarProjetoIntegrador(
      {double sizeContainer = 105, dynamic context, required Widget title}) {
    return SliverAppBar(
      title: title,
      centerTitle: true,
      shadowColor: darkBlueTransparent,
      expandedHeight: sizeContainer - 10,
      floating: true,
      forceElevated: true,
      automaticallyImplyLeading: false,
    );
  }

  BoxDecoration decorationBoxPrincipalAboutUs(dynamic context) {
    return const BoxDecoration(
        color: darkBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ));
  }
}

class CustomDetailsTheme extends ThemeExtension<CustomDetailsTheme> {
  final Color? colorTheme;
  final Color? colorTheme2;

  final BoxDecoration? decorationAboutUs;

  const CustomDetailsTheme({
    required this.colorTheme,
    this.colorTheme2,
    this.decorationAboutUs,
  });

  @override
  CustomDetailsTheme copyWith({Color? colorTheme}) {
    return CustomDetailsTheme(
      colorTheme: colorTheme ?? colorTheme,
      colorTheme2: colorTheme2 ?? colorTheme2,
      // colorTheme: colorTheme ?? this.colorTheme,

      decorationAboutUs: decorationAboutUs ?? decorationAboutUs,
    );
  }

  @override
  CustomDetailsTheme lerp(CustomDetailsTheme? other, double t) {
    if (other is! CustomDetailsTheme) {
      return this;
    }
    return CustomDetailsTheme(
      colorTheme: Color.lerp(colorTheme, other.colorTheme, t),
      decorationAboutUs: const BoxDecoration(
        color: darkBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
    );

    // changeColorPowerSwitch: Color.lerp(powerOn ? yellow : black)
  }
}
