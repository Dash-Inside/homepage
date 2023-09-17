import 'package:flutter/material.dart';
import 'package:homepage/src/pages/home_page.dart';
import 'package:flutter_animate/flutter_animate.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(
          delay: Duration(milliseconds: 400),
          duration: Duration(milliseconds: 800),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (_) => const HomePage(),
          );
        },
      ),
    );
  }
}
