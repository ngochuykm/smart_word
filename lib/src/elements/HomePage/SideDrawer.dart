import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  final double _height = 40;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            child: DrawerHeader(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Admin3i',
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Text(
                          '0389955916',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
          ),
          Container(
            height: _height,
            child: ListTile(
              leading: Icon(Icons.file_copy_outlined),
              title: Text('File to'),
              onTap: () => {},
            ),
          ),
          Container(
            height: _height,
            child: ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () => {},
            ),
          ),
          Container(
            height: _height,
            child: ListTile(
              leading: Icon(Icons.new_releases_sharp),
              title: Text('Internal news'),
              onTap: () => {},
            ),
          ),
          Container(
            height: _height,
            child: ListTile(
              leading: Icon(Icons.notification_important),
              title: Text('emmergency notication'),
              onTap: () => {},
            ),
          ),
          Container(
            height: _height,
            child: ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              onTap: () => {},
            ),
          ),
          Container(
            height: _height,
            child: ListTile(
              leading: Icon(Icons.gps_fixed),
              title: Text('Allows GPS'),
              onTap: () => {},
            ),
          ),
          Container(
            height: _height,
            child: ListTile(
              leading: Icon(Icons.gif_outlined),
              title: Text('Userguide'),
              onTap: () => {},
            ),
          ),
          Container(
            height: _height,
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () => {},
            ),
          ),
        ],
      ),
    ));
  }
}
