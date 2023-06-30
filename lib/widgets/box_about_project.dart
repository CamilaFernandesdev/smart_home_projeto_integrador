import 'package:flutter/material.dart';
import 'package:smart_home_projeto_integrador/theme/theme.dart';

class BoxProjetoIntegrador extends StatelessWidget {

  const BoxProjetoIntegrador({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomTheme.yellow,
              minimumSize: const Size(230, 55)
            ),
            child: const Text('Projeto Integrador'),
            onPressed: () {
              Navigator.of(context).pushNamed('/about');
            }),
      
    );
  }
}
