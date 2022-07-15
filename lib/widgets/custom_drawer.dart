import 'package:flutter/material.dart';
import 'package:social_media_ui/data/data.dart';
import 'package:social_media_ui/screens/login_screen.dart';

import '../screens/homepage_screen.dart';
import '../screens/profile_screen.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                height: 200,
                width: double.infinity,
                image: AssetImage(currentUser.backgroundImageUrl),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(
                            currentUser.profileImageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            "Home",
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => HomePage(),
              ),
            ),
          ),
          _buildDrawerOption(
            Icon(Icons.chat),
            "Chat",
            () => {},
          ),
          _buildDrawerOption(
            Icon(Icons.location_on),
            "Map",
            () => {},
          ),
          _buildDrawerOption(
            Icon(Icons.account_circle),
            "Your Profiles",
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => ProfileScreen(
                  user: currentUser,
                ),
              ),
            ),
          ),
          _buildDrawerOption(
            const Icon(Icons.settings),
            "Seeting",
            () => {},
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: _buildDrawerOption(
                const Icon(
                  Icons.directions_run,
                ),
                "Log out",
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerOption(Icon icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onTap: onTap,
    );
  }
}
