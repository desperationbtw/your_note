import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:your_note/core/home/ui/home_screen.dart';
import 'package:your_note/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  DI.init();

  // runApp(
  //   EasyLocalization(
  //     supportedLocales: const [
  //       Locale('en'),
  //       Locale('ru'),
  //     ],
  //     path: 'assets/translations',
  //     fallbackLocale: const Locale('en'),
  //     child: const App(),
  //   ),
  // );
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      home: const HomeScreen(),
    );
  }
}
