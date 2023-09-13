import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key, });//required Color backgroundColor, required ListView child

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(1),
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Samara'),
            accountEmail: Text('stambekova1404@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Text('SS'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home Page'),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.app_registration_rounded),
            title: const Text(' Job Information'),
            onTap: () {},
          ),
          const AboutListTile(
            icon: Icon(Icons.info),
            // ignore: sort_child_properties_last
            child: Text('About'),
            applicationIcon: Icon(Icons.local_play ),
            applicationName: 'My Quiz App',  
            applicationVersion: 'Flutter_f18', 
            applicationLegalese: 'Samara@2023company',
            aboutBoxChildren: [],
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Exit'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
