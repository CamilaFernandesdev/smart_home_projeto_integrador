import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import '../componentes/smart_devides_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // padding var constants
  final double horizontalPadding = 40;
  final double verticalPadding = 24.0;
  static const Widget space = SizedBox(
    height: 20,
  );

  // List of smart devices
  List smartDevices = [
    // icon device, powerStatus
    ['Lâmpada', Icons.access_alarm_outlined, true],
    ['Abajur', Icons.access_alarm_sharp, false],
    ['Teste 3', Icons.devices_fold, false],
    ['Teste 4', Icons.home, false]
  ];

  // Botão de ligar - power button switched
  void powerSwithChanged(bool value, int index) {
    setState(() {
      smartDevices[index][2] = value;
    });
  }

  // Summary menu
  Text summaryText (String title) {
    return Text(title,
    style: TextStyle(
      color: Colors.grey.shade100
    ),
    );
  }
  // Type summaryText => (String title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
         backgroundColor: Colors.blueGrey.shade800,
         elevation: 0,
      ), 
      drawer: Drawer(
        backgroundColor: Colors.blueGrey.shade800,
        surfaceTintColor: Colors.amberAccent.shade700,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              space,
              // TODO: modify buttonsText and changed new pages
              summaryText('Teste'),
              summaryText('Teste'),
              summaryText('Teste'),
              summaryText('Teste'),
              summaryText('Teste'),
          ]
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: horizontalPadding, vertical: verticalPadding),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: const [
            //       // Customizando AppBar
            //       Icon(Icons.menu_rounded,
            //           weight: 45, color: Colors.amberAccent),

            //       Icon(Icons.person, weight: 45, color: Colors.amberAccent)
            //     ],
            //   ),
            // ),
            // longo
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade800
              ),
              child: Icon(Icons.home,
              color: Colors.amberAccent.shade700),
            ),
            // Boas vindas
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade800
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding, vertical: verticalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Welcome, Smart Home!"),
                    Text(
                      "PROJETO INTEGRADOR",
                      style: TextStyle(fontSize: 52,
                      color: Colors.grey.shade400),
                    ),
                  ],
                ),
              ),
            ),

            space,

            const Divider(),
            // Smart devices + grid
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              child: Text(
                "Smart Devices",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.blueGrey.shade800),
              ),
            ),

            

  
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),  
                 
                child: GridView.builder(
                  itemCount: smartDevices.length,
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding
                    ),
                  // Se Box será longo ou não

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // Se Box será longo ou não
                      // childAspectRatio: 1 / 1.5
                      ),
                  itemBuilder: (context, index) {
                    return SmartDevicesBox(
                      smartDevicesName: smartDevices[index][0],
                      iconeDevice: smartDevices[index][1],
                      powerOn: smartDevices[index][2],
                      onChanged: (value) => powerSwithChanged(value, index),
                    );
                  },
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
