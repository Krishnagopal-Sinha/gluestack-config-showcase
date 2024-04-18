import 'package:accordion_example/deafult_switch.dart';
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
        //Injecting custom config JSON for button to modify it's radius
        button: {
          'borderRadius': '\$full',
        },
        //Injecting custom config JSON for accordion to modify it's title text weight
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
      //Modyfying primary color tokens to be generated from our
      //specified base color instead of default
      gluestackTokenConfig: GluestackTokenConfig(
        gsColorsToken: const GSColorsToken(
          primaryColorsFromBase: Color(0xff1DB954),
        ),
      ),
      child: const GSApp(
        debugShowCheckedModeBanner: false,
        //Feel free to repalce with other pages
        home: HomePage(),
      ),
    );
  }
}
