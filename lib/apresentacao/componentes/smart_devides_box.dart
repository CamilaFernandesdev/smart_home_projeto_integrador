import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDevicesBox extends StatelessWidget {
  final String smartDevicesName;
  final IconData iconeDevice;
  final bool powerOn;
  final void Function(bool)? onChanged;

  const SmartDevicesBox(
      {super.key,
      required this.smartDevicesName,
      required this.iconeDevice,
      required this.powerOn,
      required this.onChanged});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: powerOn ? Colors.amberAccent.shade700 : Colors.grey.shade400,
          borderRadius: BorderRadius.circular(40)),
      child: Column(
        children: [
          // icone
          Icon(
            iconeDevice,
            size: 70,
            weight: 20,
            color: powerOn? Colors.yellow : Colors.black54,
          ),

          // nome dos aparelhos e botão
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    smartDevicesName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: powerOn ? Colors.yellow : Colors.black54),
                  ),
                ),
              ),
              Transform.rotate(
                // Rotaciona o botão de ligar o aparelho
                angle: pi / 2,
                child: CupertinoSwitch(
                  activeColor: Colors.black54,
                  value: powerOn, 
                  onChanged: onChanged),
              )
            ],
          )
        ],
      ),
    );
  }
}
