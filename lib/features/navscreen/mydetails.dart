import 'package:flutter/material.dart';
import 'package:nextfarm/features/constants/gaps.dart';

class MyDetails extends StatelessWidget {
  const MyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Scaffold(
        body: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "내 정보",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(1, 1),
                        blurRadius: 1,
                      )
                    ],
                  ),
                ),
                Gaps.v32,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      filled: true,
                      hintText: "검색",
                      fillColor: Colors.grey.shade100,
                    ),
                  ),
                ),
                Gaps.v24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              offset: const Offset(3, 3),
                            )
                          ]),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("내 계좌"),
                      ),
                    ),
                    Gaps.h56,
                    Container(
                      height: 40,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              offset: const Offset(3, 3),
                            )
                          ]),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("투자 농장"),
                      ),
                    ),
                  ],
                ),
                Gaps.v32,
                Stack(children: [
                  Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(width: 1, color: Colors.black),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 17, vertical: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "S\$422,699",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Gaps.v48,
                            Text(
                              "USDC/USDT",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Gaps.v4,
                            Text(
                              "S\$12,699",
                              style: TextStyle(
                                  fontSize: 32, color: Color(0xFFA16D6D)),
                            ),
                            Gaps.v20,
                            Text(
                              "NZF/USDT",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Gaps.v4,
                            Text(
                              "S\$322,699",
                              style: TextStyle(
                                  fontSize: 32, color: Color(0xFFA16D6D)),
                            ),
                            Gaps.v20,
                            Text(
                              "NZF/USDC",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Gaps.v4,
                            Text(
                              "S\$52,437",
                              style: TextStyle(
                                  fontSize: 32, color: Color(0xFFA16D6D)),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/images/nzf.png',
                      width: 100, // 이미지의 너비 조정
                      height: 100, // 이미지의 높이를 Container의 높이에 맞게 조정
                    ),
                  ),
                ])
              ],
            ),
          ],
        )),
      ),
    );
  }
}
