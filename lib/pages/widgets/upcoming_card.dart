import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: EdgeInsets.symmetric(vertical: 22, horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/doctor_2.jpg", width: 45,)
          ),
          SizedBox(width: 14,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Dr. John Dor",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              Text(
                "Orthopedic Specialist",
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 18,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.calendar_outline,
                      size: 15,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 14, left: 6, bottom: 1),
                      child: Text("Today", style: TextStyle(color: Colors.white),),
                    ),
                    Icon(
                      Ionicons.time_outline,
                      size: 15,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 14, left: 6, bottom: 1),
                      child: Text("14:40 - 15:30 AM", style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
