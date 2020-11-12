import 'package:flutter/material.dart';
import 'constant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Image.asset('assets/hamburger_menu.png'),
                      onPressed: () {}),
                  Stack(children: [
                    IconButton(
                        icon: Image.asset('assets/notification_icon.png'),
                        onPressed: () {}),
                    Positioned(
                      right: 8,
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jobs\nDashboard',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w900,
                          fontSize: 28,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24.0),
                        child: LinearProgressIndicator(
                          value: 0.6,
                          backgroundColor: secondaryColor,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(primaryColor),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Profile Completion',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xFF8d8d8d),
                        ),
                      ),
                    ],
                  )),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                          image: Image.asset(
                        'assets/profile_picture.png',
                      ).image),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: primaryColor,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  infoItem('17', 'Matching\nJobs'),
                  Container(
                    width: 1,
                    height: 50,
                    color: secondaryColor,
                  ),
                  infoItem('20', 'Employer\nActions'),
                  Container(
                    width: 1,
                    height: 50,
                    color: secondaryColor,
                  ),
                  infoItem('26', 'Search\nAppearances'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding infoItem(String value, String label) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Colors.white),
          ),
          Text(
            label,
            style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
