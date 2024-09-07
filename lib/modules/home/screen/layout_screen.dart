import 'package:flutter/material.dart';
import 'package:valorant_task/core/consts.dart';
import 'package:valorant_task/modules/home/screen/agents_screen.dart';
import 'package:valorant_task/modules/home/screen/maps_screen.dart';
import 'package:valorant_task/modules/home/screen/weapons_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen>
    with SingleTickerProviderStateMixin {
  int index = 0;
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(180),
          child: AppBar(
            toolbarHeight: 200,
            backgroundColor: primaryColor,
            title: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/Logo_Icon.png',
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/Logo_Text.png',
                  width: 130,
                  fit: BoxFit.contain,
                )
              ],
            ),
            bottom: TabBar(
                onTap: (value) {
                  setState(() {});
                },
                controller: tabController,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: tabController.index == 0
                            ? Colors.red
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Agents',
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: tabController.index == 1
                            ? Colors.red
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Maps',
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: tabController.index == 2
                            ? Colors.red
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Weapons',
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
        body: TabBarView(
            controller: tabController,
            children: const [AgentsScreen(), MapsScreen(), WeaponsScreen()]),
      ),
    );
  }
}
// Scaffold(
//       backgroundColor: primaryColor,
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 40,
//           ),
//           Column(
//             children: [
//               Center(
//                 child: Image.asset(
//                   'assets/images/Logo_Icon.png',
//                   width: 120,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Image.asset(
//                 'assets/images/Logo_Text.png',
//                 width: 130,
//               )
//             ],
//           ),
//           const DefaultTabController(
//             length: 3,
//             child: TabBar(
//                 automaticIndicatorColorAdjustment: false,
//                 indicatorWeight: 0,
//                 indicator:
//                     BoxDecoration(border: Border(bottom: BorderSide.none)),
//                 indicatorColor: Colors.transparent,
//                 tabs: [
//                   Tab(
//                     child: Text(
//                       'agents',
//                       style: TextStyle(color: Colors.white, fontSize: 23),
//                     ),
//                   ),
//                   Tab(
//                     child: Text(
//                       'agents',
//                       style: TextStyle(color: Colors.white, fontSize: 23),
//                     ),
//                   ),
//                   Tab(
//                     child: Text(
//                       'agents',
//                       style: TextStyle(color: Colors.white, fontSize: 23),
//                     ),
//                   ),
//                 ]),
//           ),

//         ],
//       ),
//     );
