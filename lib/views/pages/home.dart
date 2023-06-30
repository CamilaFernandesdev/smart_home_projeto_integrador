import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../theme/theme.dart';
import '../../widgets/box_about_project.dart';
import '../../widgets/box_devices.dart';
import '../../widgets/logo.dart';
import '../../widgets/menu_navigator.dart';

const List smartDevice = [
  ['Lâmpada', 'Aparelho inteligente', false],
  ['Lâmpada', 'Aparelho inteligente', false]
];

CustomTheme _customTheme = CustomTheme();

 //ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  late bool darkMode = false;

  MyHomePage({
    super.key,
    required this.darkMode,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      smartDevice[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final _themeMode = MediaQuery.of(context).platformBrightness == B
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text('S M A R T  H O M E'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.darkMode = !widget.darkMode;
               widget.darkMode ? CustomTheme.darkTheme : CustomTheme.lightTheme;
              });
            },
            icon: Icon(widget.darkMode ? Icons.nightlight : Icons.wb_sunny),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: LogoSmartApp(sizeLogo: 75)),
            MenuNavigator(
              menuName: 'Home',
              iconMenu: Icon(Icons.broadcast_on_personal),
              indicatorPage: '/',
            ),
            MenuNavigator(
              menuName: 'Profile',
              iconMenu: Icon(Icons.account_circle_rounded),
              indicatorPage: '/profile',
            ),
            MenuNavigator(
              menuName: 'About',
              iconMenu: Icon(Icons.book),
              indicatorPage: '/about',
            ),
            MenuNavigator(
              menuName: 'Loading Teste',
              iconMenu: Icon(CupertinoIcons.f_cursive),
              indicatorPage: '/splash',
            ),
          ],
        ),
      ),
      body: CustomScrollView(slivers: [
        _customTheme.sliverAppBarProjetoIntegrador(
            context: context, title: const BoxProjetoIntegrador()),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                'Dispositivos conectados',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: SmartDeviceBox(
          smartDeviceName: smartDevice[0][0],
          smartDevicedescription: smartDevice[0][1],
          powerOn: smartDevice[0][2],
          onChanged: (value) => powerSwitchChanged(value, 0),
        )),
        SliverToBoxAdapter(
            child: SmartDeviceBox(
          smartDeviceName: smartDevice[1][0],
          smartDevicedescription: smartDevice[1][1],
          powerOn: smartDevice[1][2],
          onChanged: (value) => powerSwitchChanged(value, 1),
        ))
      ]),
    );
  }
}
