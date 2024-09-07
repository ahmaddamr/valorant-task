import 'package:flutter/material.dart';

class AgentWidget extends StatelessWidget {
  const AgentWidget({super.key, required this.img, required this.name});
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Center(
            child: Container(
              width: 300,
              height: 400,
              decoration: const BoxDecoration(
                color: Color(0xFF80BF41),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(80),
                  topLeft: Radius.circular(72),
                  topRight: Radius.circular(24),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: -100,
          bottom: 100,
          child: Image.network(
            img,
            height: 460,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Positioned(
          left: 30,
          bottom: 80,
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
