import 'package:financely/core/app_routes.dart';
import 'package:financely/core/colours.dart';
import 'package:financely/core/theme/provider/theme_provider.dart';
import 'package:financely/firebase_options.dart';
import 'package:financely/screens/splash/provider/splash_provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
            providers: [
              ChangeNotifierProvider<SplashProvider>(
                  create: (context) => SplashProvider()),
            ],
            child: ChangeNotifierProvider(
              create: (context) => ThemeProvider(),
              child: Consumer<ThemeProvider>(
                builder: (context, ThemeProvider theme, child) {
                  return MaterialApp(
                      title: "Financely",
                      theme: ThemeData(
                          useMaterial3: true, colorScheme: lightColorScheme),
                      darkTheme: !theme.isDark
                          ? ThemeData.dark(useMaterial3: true)
                          : ThemeData.light(useMaterial3: true),
                      onGenerateRoute: AppRoutes.onGenerateRoute);
                },
              ),
            ));
      },
    );
  }
}
