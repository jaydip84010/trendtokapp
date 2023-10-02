import 'package:flutter/material.dart';


class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  List<String> items = [
                    'Customize For You Algorithm',
                    'Contact Us',
                    'Request An Album',
                    'Upgrade to Pro Account',
                    'Allow Push Notifications',
                    'Business Mode',
                    'Get More Content Ideas',
                  ];

                  if (index == 0 || index == 1 || index == 2 || index == 3 || index == 6) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            items[index],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          trailing:  Icon(
                            Icons.chevron_right,
                            color: Colors.green,
                            size: 35,
                          )
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ],
                    );
                  } else if (index == 4) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            items[index],
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ],
                    );
                  } else if (index == 5) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            items[index],
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          trailing: Transform.scale(
                            scale: 1.1,
                            child: Switch(
                              inactiveTrackColor: Colors.grey.withOpacity(0.5),
                              value: false,
                              onChanged: (value) {
                                
                              },
                              activeColor: Colors.green,
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ],
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/tiktok_ico.png',
                  height: 40,
                  width: 40,
                  color: Colors.green,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 30),
                Image.asset(
                  'assets/images/insta_ico.png',
                  height: 30,
                  width: 30,
                  color: Colors.green,
                ),
                SizedBox(width: 30),
                Image.asset(
                  'assets/images/twitter_ico.png',
                  height: 30,
                  width: 30,
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'ⓒ 2023 ForUsApps, LLC  •  TrendTok  v4.4.4(360)',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Made with ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.green,
                  size: 20,
                ),
                Text(
                  ' in NYC',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
