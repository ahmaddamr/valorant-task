// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:valorant_task/core/consts.dart';
import 'package:valorant_task/manager/api_service.dart';
import 'package:valorant_task/modules/home/widgets/map_list_widget.dart';

class MapsScreen extends StatelessWidget {
  const MapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: FutureBuilder(
          future: ApiService().getMaps(),
          builder: (context, snapshot) {
            print('data is ${snapshot.data}');
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              print('error is ${snapshot.error}');
              return const Text(
                'An Error Happened',
                
                style: TextStyle(color: Colors.amber),
              );
            } else {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data?.data?.length,
                itemBuilder: (context, index) {
                  var data = snapshot.data!.data?[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MapListWidget(
                      img: data?.splash ?? "",
                      mapimg: data?.displayIcon ?? "",
                      name: data?.displayName ?? "",
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
