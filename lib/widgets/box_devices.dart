import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/theme.dart';

class SmartDeviceBox extends StatelessWidget {
  final String smartDeviceName;
  final String smartDevicedescription;
  final bool powerOn;
  final Function(bool)? onChanged;

  const SmartDeviceBox(
      {super.key,
      required this.smartDeviceName,
      required this.smartDevicedescription,
      required this.powerOn,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    CustomTheme customTheme = CustomTheme();

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        child: Container(
          height: 80,
          decoration: customTheme.designerContainer(powerOn),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.lightbulb_rounded,
                  color: customTheme.changeColorPowerSwitch(powerOn),
                  size: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      smartDeviceName,
                      style: TextStyle(
                          color: 
                            customTheme.changeColorPowerSwitch(powerOn),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      smartDevicedescription,
                      style: TextStyle(
                        color:
                            customTheme.changeColorPowerSwitch(powerOn),
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoSwitch(
                value: powerOn,
                activeColor: CustomTheme.yellow,
                trackColor: CustomTheme.black,
                onChanged: onChanged,
              )
            ],
          ),
        ),
      ),
    );
  }
}
