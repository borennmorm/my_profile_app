// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 0.0, // Remove the shadow
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(140),
                      ),
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundImage:
                            AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Borin Morm",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Programmer",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            icon: const FaIcon(FontAwesomeIcons.github),
                            onPressed: () async {
                              var url =
                                  Uri.parse('https://github.com/borinmorm21');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                              print('GitHub Button clicked');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                            ),
                            label: const Text("GitHub"),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            icon: const FaIcon(FontAwesomeIcons.youtube),
                            onPressed: () async {
                              var url = Uri.parse(
                                  'https://youtube.com/@iambenro_official?si=w39ZSMED2BTAYacw');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                              print('YouTube Button clicked');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                            ),
                            label: const Text("YouTube"),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double
                              .infinity, // Make the SizedBox take the full width
                          child: ElevatedButton.icon(
                            icon: const FaIcon(FontAwesomeIcons.tiktok),
                            onPressed: () async {
                              var url = Uri.parse(
                                  'https://www.tiktok.com/@iambenro_officail');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                              print('TikTok Button clicked');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                            ),
                            label: const Text("TikTok"),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double
                              .infinity, // Make the SizedBox take the full width
                          child: ElevatedButton.icon(
                            icon: const FaIcon(FontAwesomeIcons.telegram),
                            onPressed: () async {
                              var url = Uri.parse('https://t.me/borin_morm');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                              print('Telegram Button clicked');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                            ),
                            label: const Text("Telegram"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueAccent),
                  accountName: Text(
                    "Borin Morm",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("borin.morm@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('My Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
