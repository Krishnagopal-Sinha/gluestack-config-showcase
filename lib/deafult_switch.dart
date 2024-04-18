import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class DefaultSwitchPage extends StatelessWidget {
  const DefaultSwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: GSBox(
          style: GSStyle(height: 150),
          child: GSCenter(
            child: GSSwitch(
              size: GSSwitchSizes.$md,
              onToggle: (bool value) {},
            ),
          ),
        ),
      ),
    );
  }
}
