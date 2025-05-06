import 'package:flutter/material.dart';
import 'package:health_app_ui/pages/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("Hi Jane"),
             Text(
               "How are feeling today?",
               style: Theme.of(context).textTheme.bodySmall,
             )
           ],
         ),
         actions: [
           IconButton(
               onPressed: () {}, icon: Icon(Ionicons.notifications_outline)),
           IconButton(
               onPressed: () {}, icon: Icon(Ionicons.search_outline)),
         ],
       ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          UpcomingCard(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.calendar_outline), label: "Calendar"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.chatbubble_ellipses_outline), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline), label: "Profile"),
          ]
      ),
    );
  }
}
