import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../theme/theme.dart';


class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool animationComplete = false;

  void goHomePage() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {

    // void startTimer() {
    //   Timer.periodic(const Duration(milliseconds: 50), (timer) {
    //     setState(() {
    //       percent += 0.1;
    //       if (percent == 1) {
    //         animationComplete = true;
    //         timer.cancel();
    //       }
    //     });
    //   });
    // }

    //   @override
    // void initState() {
    //   super.initState();
    //   startTimer();
    // }

    // void _iconChangeColor(){
    //   if (percent == 0.5){
    //     animationComplete = true;
    //   }
    // }

    return Scaffold(
      backgroundColor: CustomTheme.darkBlue,
      body: Center(
        child: CircularPercentIndicator(
            animation: true,
            animationDuration: 1600,
            radius: 90,
            lineWidth: 15,
            percent: 1,
            progressColor: CustomTheme.yellow,
            backgroundColor: CustomTheme.turnOffColorContainer,
            // arcType: ArcType.HALF,
            // arcBackgroundColor: CustomTheme.turnOffColorContainer,
            maskFilter: const MaskFilter.blur(BlurStyle.solid, 20),
            circularStrokeCap: CircularStrokeCap.round,
            center: Icon(
              Icons.lightbulb_rounded,
              color: animationComplete ? CustomTheme.yellow : CustomTheme.turnOffColorContainer,
              size: 105,
              shadows: [
                BoxShadow(
                  color: animationComplete ? CustomTheme.yellow : Colors.transparent,
                  blurRadius: 20,
                  blurStyle: BlurStyle.solid
                )
              ],
            ),
            onAnimationEnd: () {
              setState(() {
                animationComplete = !animationComplete;
                goHomePage();
              });
            }),
      ),
    );
  }
}
