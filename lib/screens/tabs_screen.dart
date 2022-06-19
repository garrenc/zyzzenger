import 'package:flutter/material.dart';
import 'package:messenger_plus/screens/adonis_screen.dart';
import 'package:messenger_plus/screens/chat_screen.dart';
import 'package:messenger_plus/screens/tyler_screen.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int currentTab = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.web),
            label: 'тайлер',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'чатик',
            activeIcon: Icon(
              Icons.chat_bubble,
              color: Colors.white,
            ),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: 'adonis',
          ),
        ],
      ),
      body: IndexedStack(
        children: <Widget>[
          TylerScreen(),
          const ChatScreen(),
          AdonisScreen(),
        ],
        index: currentTab,
      ),
    );
  }
}
