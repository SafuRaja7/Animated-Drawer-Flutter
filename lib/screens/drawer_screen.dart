// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF380036).withOpacity(.9),
            const Color(0xFF0CBABA).withOpacity(.9),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 40,
          bottom: 70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Flutter Things',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Items(
                  text: 'Settings',
                  icon: Icons.error_outline,
                ),
                SizedBox(
                  height: 20,
                ),
                Items(
                  text: 'Profile',
                  icon: Icons.person,
                ),
                SizedBox(
                  height: 20,
                ),
                Items(
                  text: 'Messages',
                  icon: Icons.message,
                ),
                SizedBox(
                  height: 20,
                ),
                Items(
                  text: 'Saved',
                  icon: Icons.bookmark,
                ),
                SizedBox(
                  height: 20,
                ),
                Items(
                  text: 'Favourites',
                  icon: Icons.favorite,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Items(text: 'Logout', icon: Icons.logout)
          ],
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  final String text;
  final IconData icon;
  const Items({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(text),
      ],
    );
  }
}
