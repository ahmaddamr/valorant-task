import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:valorant_task/core/consts.dart';
import 'package:valorant_task/manager/api_service.dart';
import 'package:valorant_task/modules/home/screen/agent_details_screen.dart';
import 'package:valorant_task/modules/home/widgets/agent_widget.dart';

class AgentsScreen extends StatelessWidget {
  const AgentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: FutureBuilder(
        future: ApiService().getAgents(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Text('An Error Happened');
          } else {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data?.data?.length,
              itemBuilder: (context, index) {
                var data = snapshot.data!.data?[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      log('agent tapped');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AgentDetailsScreen(
                              name: data?.displayName ?? '',
                              bg: data?.background ?? "",
                              img: data?.fullPortrait ?? '',
                              desc: data?.description ?? "",
                              abilities:
                                  data?.abilities?[index].displayIcon ?? "",
                            );
                          },
                        ),
                      );
                    },
                    child: AgentWidget(
                      img: data?.fullPortrait ?? '',
                      name: data?.displayName ?? '',
                    ),
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
