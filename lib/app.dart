import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_cart/utils/constants/text_strings.dart';
import 'package:quick_cart/utils/theme/theme.dart';

class QCApp extends StatelessWidget {
  const QCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: QCTexts.appName,
      themeMode: ThemeMode.system,
      theme: QCAppTheme.lightTheme,
      darkTheme: QCAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Awesome! 🎊 Project Structure is set up and running. \n Happy T Coding 🎊',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
