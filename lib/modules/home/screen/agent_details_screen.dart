import 'package:flutter/material.dart';
import 'package:valorant_task/core/consts.dart';

class AgentDetailsScreen extends StatelessWidget {
  const AgentDetailsScreen(
      {super.key,
      required this.name,
      required this.bg,
      required this.img,
      required this.desc, required this.abilities,
     });
  final String name;
  final String bg;
  final String img;
  final String desc;
  final String abilities;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          name,
          style: const TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  bg,
                  width: 500,
                  height: 500,
                ),
                Positioned(
                  bottom: 60,
                  child: Image.network(img,width: 500,height: 500,),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Descreption',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                desc,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Abilities',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.network(abilities),
          ],
        ),
      ),
    );
  }
}
