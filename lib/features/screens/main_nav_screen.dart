import 'package:flutter/material.dart';
import 'package:nextfarm/features/constants/gaps.dart';
import 'package:url_launcher/url_launcher.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({Key? key}) : super(key: key);

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  final Uri _url = Uri.parse(
      'https://nextfarm-docs.gitbook.io/nextfarm-docs/core-concepts/how-nextfarm-works');
  Future<void> _onBaksuTap() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xffa0e557),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.man_2_rounded,
                          size: 50,
                        ),
                        Text(
                          '안녕하세요? 무엇을 도와드릴까요?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/nextFarmIcon.png',
                              width: 20,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          filled: true,
                          hintText: "밭 정보,내 정보,현재 참여 풀...",
                          fillColor: const Color(0xFFF5F5F5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gaps.v32,
              Gaps.v10,
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black, spreadRadius: 1, // 그림자 확산 정도
                      blurRadius: 7, // 그림자 흐림 정도
                      offset: Offset(5, 3), // 그림자 위치 조정 (수평, 수직)
                    )
                  ],
                  color: const Color(0xFFC3FFBE),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/farmer.png',
                      width: 80, // 이미지의 너비 조정
                      height: MediaQuery.of(context).size.width *
                          0.3, // 이미지의 높이를 Container의 높이에 맞게 조정
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '혹시 투자가 망설여 지시나요 ?',
                          style: TextStyle(
                            fontSize: 14, // 적절한 폰트 크기 설정
                            fontWeight: FontWeight.bold, // 필요에 따라 폰트 두껍게 설정
                          ),
                        ),
                        Text(
                          '저희의 백서를 읽어보세요!',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold, // 적절한 폰트 크기 설정
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gaps.v10,
              GestureDetector(
                onTap: _onBaksuTap,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black, spreadRadius: 1, // 그림자 확산 정도
                        blurRadius: 7, // 그림자 흐림 정도
                        offset: Offset(5, 3), // 그림자 위치 조정 (수평, 수직)
                      )
                    ],
                    color: const Color.fromARGB(255, 177, 196, 6),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21, vertical: 7),
                    child: Text(
                      'Click하여 백서보기',
                      style: TextStyle(
                        fontSize: 14, // 적절한 폰트 크기 설정
                        fontWeight: FontWeight.bold, // 필요에 따라 폰트 두껍게 설정
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 300,
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "정보/카테고리",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(color: Color(0xFF359C04)),
                        ),
                      ]),
                ),
              ),
              Container(
                width: 500,
                height: 90,
                decoration: const BoxDecoration(color: Colors.white),
                child: SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 0.1, // 그림자 확산 정도
                                    blurRadius: 7, // 그림자 흐림 정도
                                    offset: Offset(2, 2), // 그림자 위치 조정 (수평, 수직)
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  'assets/images/biryo.png',
                                  width: 50, // 이미지의 너비 조정
                                  height: 50, // 이미지의 높이를 Container의 높이에 맞게 조정
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 0.1, // 그림자 확산 정도
                                    blurRadius: 7, // 그림자 흐림 정도
                                    offset: Offset(2, 2), // 그림자 위치 조정 (수평, 수직)
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  'assets/images/farmer2.png',
                                  width: 50, // 이미지의 너비 조정
                                  height: 50, // 이미지의 높이를 Container의 높이에 맞게 조정
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 0.1, // 그림자 확산 정도
                                    blurRadius: 7, // 그림자 흐림 정도
                                    offset: Offset(2, 2), // 그림자 위치 조정 (수평, 수직)
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  'assets/images/book.png',
                                  width: 50, // 이미지의 너비 조정
                                  height: 50, // 이미지의 높이를 Container의 높이에 맞게 조정
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gaps.h10,
                  Text(
                    "비료/사료",
                    style: TextStyle(fontSize: 15),
                  ),
                  Gaps.h10,
                  Text(
                    "농부",
                    style: TextStyle(fontSize: 15),
                  ),
                  Gaps.h10,
                  Text(
                    "투자 백서",
                    style: TextStyle(fontSize: 15),
                  ),
                  Gaps.h14,
                ],
              ),
              Gaps.v16,
              const Text(
                "현재 참여 가능 풀(Voosting Now!!)",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF18653B),
                ),
              ),
              const SizedBox(
                width: 290,
                child: Text(
                  "터치하여 풀 정보 탐색",
                  textAlign: TextAlign.end,
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
              Gaps.v32,
              Container(
                width: 500,
                height: 200,
                decoration: const BoxDecoration(color: Colors.white),
                child: SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/images/farm4.png',
                              width: 180, // 이미지의 너비 조정
                              height: 180, // 이미지의 높이를 Container의 높이에 맞게 조정
                            ),
                            Image.asset(
                              'assets/images/farm2.png',
                              width: 180, // 이미지의 너비 조정
                              height: 180, // 이미지의 높이를 Container의 높이에 맞게 조정
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              Container(
                width: 500,
                height: 200,
                decoration: const BoxDecoration(color: Colors.white),
                child: SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/images/farm3.png',
                              width: 180, // 이미지의 너비 조정
                              height: 180, // 이미지의 높이를 Container의 높이에 맞게 조정
                            ),
                            Image.asset(
                              'assets/images/farm5.png',
                              width: 180, // 이미지의 너비 조정
                              height: 180, // 이미지의 높이를 Container의 높이에 맞게 조정
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
