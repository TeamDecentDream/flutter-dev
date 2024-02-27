import 'package:flutter/material.dart';
import 'package:nextfarm/features/constants/gaps.dart';
import 'package:nextfarm/features/investing/investing_screen.dart';

class Farms extends StatefulWidget {
  const Farms({super.key});

  @override
  State<Farms> createState() => _FarmsState();
}

class _FarmsState extends State<Farms> {
  @override
  Widget build(BuildContext context) {
    void _onFarmTap() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Investing(),
        ),
      );
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Container(
          width: 500,
          decoration: const BoxDecoration(color: Colors.white),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: _onFarmTap,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/farm2.png',
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
                              "144,457\$",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("모금 기간"),
                            Text('1.08~2.08'),
                            Text("예상APR"),
                            Text(
                              "177%",
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
                ),
                Gaps.v20,
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
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
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
                Gaps.v20,
                Row(
                  children: [
                    Image.asset(
                      'assets/images/farm4.png',
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
                            "356,773\$",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("모금 기간"),
                          Text('1.08~2.18'),
                          Text("예상APR"),
                          Text(
                            "117%",
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
                Gaps.v20,
                Row(
                  children: [
                    Image.asset(
                      'assets/images/farm5.png',
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
                            "마감했습니다!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
