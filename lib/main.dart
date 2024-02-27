import 'package:flutter/material.dart';
import 'package:nextfarm/features/constants/sizes.dart';
import 'package:nextfarm/features/main_screen.dart';

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
        scaffoldBackgroundColor: Colors.white,
        //scaffold만들때마다 배경을 white로 해주기 귀찮으니까 여기서 한번에 셋팅
        primaryColor: const Color(0xFFE9435A),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          //app바도 전역으로 설정
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
            //위에
          ),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
