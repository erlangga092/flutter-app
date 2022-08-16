import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:latihan_bloc/pages/sign_up_page.dart';

void main() => runApp(const MyApp());

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
