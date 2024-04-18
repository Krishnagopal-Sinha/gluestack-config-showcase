import 'package:flutter/material.dart';
import 'package:gluestack_ui/gluestack_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: GSAccordion(
          children: [
            GSAccordionItem(
              // radius: 21,
              // isDisabled: true,
              title: GSAccordionTitle(text: 'How do I place an order?'),
              content: GSAccordionContent(
                text:
                    "To place an order, simply select the products you want, proceed to checkout, provide shipping and payment information, and finalize your purchase.",
              ),
            ),
            GSAccordionItem(
              title:
                  GSAccordionTitle(text: 'What payment options do you accept?'),
              content: GSAccordionContent(
                text:
                    "We accept all major credit cards, including Visa, Mastercard, and American Express. We also support payments through PayPal.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
