// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:valorant_task/core/consts.dart';
import 'package:valorant_task/manager/api_service.dart';
import 'package:valorant_task/modules/home/widgets/weapons_list_widget.dart';

class WeaponsScreen extends StatelessWidget {
  const WeaponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: FutureBuilder(
        future: ApiService().getWeapons(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('error is ${snapshot.error}');
            return const Text('An Error Happened');
          } else {
            return ListView.builder(
              scrollDirection: Axis.vertical,  // This is your main vertical ListView
              itemCount: snapshot.data?.data?.length ?? 0,
              itemBuilder: (context, index) {
                var data = snapshot.data!.data?[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: WeaponsListWidget(
                    txt1: data?.displayName ?? "",
                    txt2: data?.category?.substring(21,26) ?? "",
                    img: data?.displayIcon ?? "",
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
