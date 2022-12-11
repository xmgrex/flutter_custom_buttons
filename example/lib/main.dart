import 'package:flutter/material.dart';
import 'package:flutter_custom_buttons/flutter_custom_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = false;
  double height = 48;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedScaleButton(
              isScale: false,
              label: 'Push',
              width: 240,
              onPressed: () {},
            ),
            const SizedBox(height: 32),
            AnimatedScaleButton(
              label: 'With Icon',
              icon: Icons.flutter_dash,
              width: 240,
              onPressed: () {},
            ),
            const SizedBox(height: 32),
            AnimatedScaleButton(
              isScale: false,
              label: 'Loading',
              isLoading: isLoading,
              height: height,
              width: 240,
              onPressed: () {
                setState(() {
                  isLoading = !isLoading;
                  isLoading ? height = 32 : height = 48;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
