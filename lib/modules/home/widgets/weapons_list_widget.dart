import 'package:flutter/material.dart';

class WeaponsListWidget extends StatelessWidget {
  const WeaponsListWidget(
      {super.key, required this.txt1, required this.txt2, required this.img});
  final String txt1;
  final String txt2;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: 400,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff081E34),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          txt1,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Text(
                        txt2,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: -20,
            bottom: -30,
            child: Image.network(
              img,
              width: 300,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
