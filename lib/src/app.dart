import 'package:flutter/material.dart';
import 'package:homepage/src/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      },
    );
  }
}
