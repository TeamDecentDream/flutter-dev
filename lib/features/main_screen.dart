import 'package:flutter/material.dart';
import 'package:nextfarm/features/constants/sizes.dart';
import 'package:nextfarm/features/constants/gaps.dart';
import 'package:nextfarm/features/screens/navscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // final GoogleSignIn googleSignIn = GoogleSignIn();

  // Future<void> _handleGoogleSignIn() async {
  //   try {
  //     print("Google Sign-in attempt started."); // 시작 로그 출력

  //     final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  //     if (googleUser != null) {
  //       print("Google Sign-in successful."); // 성공 로그 출력

  //       Navigator.of(context).push(
  //         MaterialPageRoute(builder: (context) => const LoginScreen()),
  //       );
  //     }
  //   } catch (error) {
  //     print("Error during Google Sign-in: $error"); // 오류 로그 출력
  //   }
  // }
  void _onLoginTap() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const NavScreen(),
        ),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 158, 241, 110),
        title: const Text(
          "Farm's Next Generation",
          style: TextStyle(fontSize: Sizes.size20, fontWeight: FontWeight.w200),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size10, vertical: Sizes.size5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gaps.v60,
              const Text(
                "NEXT FARM",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 61, 187, 109)),
              ),
              const Text(
                "for Worker",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Image.asset(
                'assets/images/nextFarmIcon.png',
                width: 300,
              ),
              Gaps.v20,
              GestureDetector(
                onTap: _onLoginTap,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: const Text(
                    "로그인",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Gaps.v16,
              const Text.rich(
                TextSpan(
                  text: '게스트로 ',
                  children: <TextSpan>[
                    TextSpan(
                      text: '넥스트팜',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: ' 둘러보기 '),
                    TextSpan(
                      text: 'Click!',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Gaps.v80,
              Gaps.v32,
              BottomAppBar(
                elevation: 1,
                child: Title(
                    color: Colors.white,
                    child: const Text(
                        "© 2024, All Copyright reserved by DecentDreams")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
