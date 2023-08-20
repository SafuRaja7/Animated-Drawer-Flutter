import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double xOffset = 0;
  double yOffset = 0;

  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isOpen ? 0.8 : 1.00)
        ..rotateZ(isOpen ? -50 : 0),
      color: Colors.white,
      duration: const Duration(milliseconds: 400),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isOpen
                      ? GestureDetector(
                          child: const Icon(Icons.arrow_back_ios),
                          onTap: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              isOpen = false;
                            });
                          },
                        )
                      : GestureDetector(
                          child: const Icon(Icons.menu),
                          onTap: () {
                            setState(
                              () {
                                xOffset = 320;
                                yOffset = 50;
                                isOpen = true;
                              },
                            );
                          },
                        ),
                  const Text('Animated Drawer'),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Container(
                  height: 800,
                  width: double.infinity,
                  color: Colors.deepPurple,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
