import 'package:flutter/material.dart';
import '../../models/custom_icon.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {

    List<CustomIcon> customIcons = [
      CustomIcon(icon: "assets/appointment.png", name: "Appointment"),
      CustomIcon(icon: "assets/hospital.png", name: "Hospital"),
      CustomIcon(icon: "assets/virus.png", name: "Covid-19"),
      CustomIcon(icon: "assets/more.png", name: "More"),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(customIcons.length, (index) {
          return Padding(
            padding: EdgeInsets.only(right: 14.0, left: index == 0 ? 0.0 : 14.0,),
            child: healthNeedItem(context, customIcons[index]),
          );
        }),
      ),
    );
  }

  Widget healthNeedItem(BuildContext context, CustomIcon customIcon) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context)
                .colorScheme
                .primary
                .withValues(alpha: 0.1),
          ),
          child: Image.asset(customIcon.icon),
        ),
        const SizedBox(height: 6),
        Text(customIcon.name),
      ],
    );
  }
}
