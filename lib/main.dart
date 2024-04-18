import 'package:accordion_example/home.dart';
import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GluestackProvider(
      gluestackCustomConfig: GluestackCustomConfig(
        accordion: {
          "variants": {
            "size": {
              "sm": {
                "_titleText": {
                  "fontWeight": "\$normal",
                },
              },
              "md": {
                "_titleText": {
                  "fontWeight": "\$normal",
                },
              },
              "lg": {
                "_titleText": {
                  "fontWeight": "\$normal",
                },
              }
            },
          },
 },
      ),
      child: const GSApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
