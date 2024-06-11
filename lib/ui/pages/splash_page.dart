import 'package:evoting/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, "/welcome");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img_logo.png",
              width: 94,
            ),
            SizedBox(height: 8,),
            Text(
              "Evoting",
              style : darkBlueSemibold.copyWith(
                fontSize: 24
              ),
            ),
            Text(
              "Evoting by TVW",
              style : lightBlueRegular.copyWith(
                fontSize: 12
              ),
            ),
            
          ],
        ),
      )
    );
  }
}