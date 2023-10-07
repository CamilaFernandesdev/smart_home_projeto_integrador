// ignore_for_file: dead_code

import 'package:flutter/material.dart';

import '../../controllers/smart_device_controller.dart';
import '../../shared/theme.dart';
import '../../shared/widgets/box_devices.dart';
import '../components/drawer.dart';

const List smartDevice = [
  ['Lâmpada', 'Aparelho inteligente', false],
  ['Lâmpada', 'Aparelho inteligente', true]
];

const bool teste = false;

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
  final smartDevices = SmartDeviceController().getSmartDevices();

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      smartDevice[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    const int sizeContainer = 115;

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
                widget.darkMode
                    ? CustomTheme.darkTheme
                    : CustomTheme.lightTheme;
              });
            },
            icon: Icon(widget.darkMode ? Icons.nightlight : Icons.wb_sunny),
          ),
        ],
      ),
      drawer: buildMenuDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Dispositivos conectados',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // You can adjust the number of columns
              ),
              itemCount: smartDevices.length,
              itemBuilder: (context, index) {
                final smartDevice = smartDevices[index];
                return Card(
                  child: ListTile(
                    title: Text(smartDevice.name),
                    subtitle: Text(smartDevice.type),
                    trailing:
                        smartDevice.hasOptions ? Icon(Icons.settings) : null,
                    // Add more UI elements or logic based on the smart device properties
                  ),
                );
              },
            ),
          ),
        ],
      ),
      // body: CustomScrollView(slivers: [
      //   // SliverAppBar(
      //   //   title: const Text('Título da AppBar'),
      //   //   centerTitle: true,
      //   //   shadowColor: Colors.grey[900],
      //   //   expandedHeight: sizeContainer - 10,
      //   //   floating: true,
      //   //   forceElevated: true,
      //   //   automaticallyImplyLeading: false,
      //   // Remova o atributo 'child' daqui
      //   // ),
      //   const SliverToBoxAdapter(
      //     child: Padding(
      //       padding: EdgeInsets.all(12.0),
      //       child: Center(
      //         child: Text(
      //           'Dispositivos conectados',
      //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ),
      //   ),
      //   SliverToBoxAdapter(
      //     child: SmartDeviceBox(
      //       smartDeviceName: smartDevice[0][0],
      //       smartDevicedescription: smartDevice[0][1],
      //       powerOn: smartDevice[0][2],
      //       onChanged: (value) => powerSwitchChanged(value, 0),
      //     ),
      //   ),
      //   SliverToBoxAdapter(
      //     child: SmartDeviceBox(
      //       smartDeviceName: smartDevice[1][0],
      //       smartDevicedescription: smartDevice[1][1],
      //       powerOn: smartDevice[1][2],
      //       onChanged: (value) => powerSwitchChanged(value, 1),
      //     ),
      //   ),
      // SliverToBoxAdapter(
      //     child: teste
      //         ? ListView.builder(
      //             itemCount: smartDevices.length,
      //             itemBuilder: (context, index) {
      //               final smartDevice = smartDevices[index];
      //               return ListTile(
      //                 title: Text(smartDevice.name),
      //                 subtitle: Text(smartDevice.type),
      //                 trailing: smartDevice.hasOptions
      //                     ? Icon(Icons.settings)
      //                     : null,
      //                 // Add more UI elements or logic based on the smart device properties
      //               );
      //             })
      //         : Container(color: Colors.green))
    );
  }
}
