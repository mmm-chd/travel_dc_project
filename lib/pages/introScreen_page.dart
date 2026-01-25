import 'package:dicoding_project/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroscreenPage extends StatefulWidget {
  const IntroscreenPage({super.key});

  @override
  State<IntroscreenPage> createState() => _IntroscreenPageState();
}

class _IntroscreenPageState extends State<IntroscreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashing();
  }

  void splashing() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushNamed(context, AppRoutes.splashPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/animations/flight.json',
          width: 300,
          height: 300,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
