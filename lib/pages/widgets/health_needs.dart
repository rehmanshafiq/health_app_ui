import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context)
                    .colorScheme
                    .primary
                    .withValues(alpha: 0.1)
              ),
              child: Image.asset("assets/appointment.png"),
            )
          ],
        )
      ],
    );
  }
}
