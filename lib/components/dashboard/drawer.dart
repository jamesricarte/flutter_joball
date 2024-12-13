import 'package:flutter/material.dart';
import 'package:joball/auth/auth_service.dart';
import 'package:joball/login_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService();

    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text("James Ricarte"),
          accountEmail: Text("jamesricarte@email.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),
          decoration: BoxDecoration(color: Colors.black),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("Profile"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text("Sign out"),
          onTap: () async {
            await _authService.signOut();
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          },
        )
      ],
    ));
  }
}
