import 'package:flutter/material.dart';

import 'modules/home/screen/layout_screen.dart';

void main() {
  runApp(const ValorantTask());
}

class ValorantTask extends StatelessWidget {
  const ValorantTask({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LayoutScreen(),
    );
  }
}
