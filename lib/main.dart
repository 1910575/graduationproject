import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myguideproject/audiobook/audio_desc_screen.dart';
import 'package:myguideproject/scanning/qr_code_screen.dart';
import 'package:myguideproject/who%20you%20are/who_screen.dart';

import 'audiobook.dart';
import 'onboarding_screens/welcome_screen.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        )
      ),
      home:QrCodeScreen(),

    );

  }
}
