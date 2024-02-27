import 'package:flutter/material.dart';
import 'package:nextfarm/features/constants/gaps.dart';

class Investing extends StatelessWidget {
  const Investing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/farm3.png',
                    width: 180, // 이미지의 너비 조정
                    height: 220, // 이미지의 높이를 Container의 높이에 맞게 조정
                  ),
                  const SizedBox(
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "총 모금액(TVL)",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "23,457\$",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                        Text("모금 기간"),
                        Text('1.13~2.13'),
                        Text("예상APR"),
                        Text(
                          "78%",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Gaps.v5,
                        Text("밭 실제 위치Click!"),
                      ],
                    ),
                  ),
                ],
              ),
              Gaps.v48,
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Investing Now",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic, // 기울기 설정
                    ),
                  ),
                ],
              ),
              Gaps.v44,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2), // 그림자의 위치 조정
                          blurRadius: 4, // 그림자의 흐림 정도
                          spreadRadius: 1, // 그림자의 확산 정도
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("지불할 금액"),
                            ],
                          ),
                          Gaps.v10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "0",
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                "USDT",
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Gaps.v10,
              const Icon(Icons.keyboard_arrow_down),
              Gaps.v10,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2), // 그림자의 위치 조정
                          blurRadius: 4, // 그림자의 흐림 정도
                          spreadRadius: 1, // 그림자의 확산 정도
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("받을 금액"),
                            ],
                          ),
                          Gaps.v10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "0",
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                "토큰선택",
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
