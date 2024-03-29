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
                    const SizedBox(
                        height: 10), // Add space between text and button
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          icon: const FaIcon(FontAwesomeIcons.github),
                          onPressed: () async {
                            var url =
                                Uri.https('https://github.com/borinmorm21');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            }
                            print('Button clicked');
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 50),
                            ),
                          ),
                          label: const Text(
                            "GitHub",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton.icon(
                          icon: const FaIcon(FontAwesomeIcons.youtube),
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 50),
                            ),
                          ),
                          label: const Text(
                            "Youtube",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton.icon(
                          icon: const FaIcon(FontAwesomeIcons.tiktok),
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 50),
                            ),
                          ),
                          label: const Text(
                            "TikTok",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton.icon(
                          icon: const FaIcon(FontAwesomeIcons.telegram),
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 50),
                            ),
                          ),
                          label: const Text(
                            "Telegram",
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
