import 'package:fake_eccom/core/theme_data.dart';
import 'package:fake_eccom/ui/manager/theme/theme_provider.dart';
import 'package:fake_eccom/ui/pages/home_page.dart';
import 'package:fake_eccom/ui/widgets/root_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(
                isDarkTheme: themeProvider.getIsDarkTheme, context: context),
            home: const RootNav(),
          );
        },
      ),
    );
  }
}
