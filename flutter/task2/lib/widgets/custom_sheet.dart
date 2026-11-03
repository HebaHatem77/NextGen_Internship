import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_card.dart';
import 'custom_text.dart';

class CustomSheet extends StatelessWidget {
  final VoidCallback onClose;
  const CustomSheet({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.45,
      minChildSize: 0.25,
      maxChildSize: 0.9,
      shouldCloseOnMinExtent: true,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: onClose,
                  icon: const Icon(Icons.close),
                ),
              ),
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: EdgeInsets.all(0),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(number: 42, text: 'Projects'),
                        CustomText(number: 712, text: 'Clients'),
                        CustomText(number: 92, text: 'Messages'),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        const Text(
                          'Specialized In',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.grey,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),

                    GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.9,
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        CustomCard(
                          icon: FontAwesomeIcons.lightbulb,
                          text: 'Concepting',
                        ),
                        CustomCard(
                          icon: FontAwesomeIcons.penRuler,
                          text: 'UI & UX',
                        ),
                        CustomCard(
                          icon: FontAwesomeIcons.palette,
                          text: 'Visual Design',
                        ),
                        CustomCard(
                          icon: FontAwesomeIcons.handPointer,
                          text: 'Interaction',
                        ),
                        CustomCard(
                          icon: FontAwesomeIcons.chartLine,
                          text: 'Analysis',
                        ),
                        CustomCard(
                          icon: FontAwesomeIcons.handshake,
                          text: 'Client Management',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
