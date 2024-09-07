import 'package:flutter/material.dart';

class MapListWidget extends StatelessWidget {
  const MapListWidget(
      {super.key, required this.mapimg, required this.img, required this.name});
  final String mapimg;
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          width: 400,
          height: 240,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 0,
                // left: 0,
                child: Image.network(
                  mapimg,
                  width: 180,
                  height: 180,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
