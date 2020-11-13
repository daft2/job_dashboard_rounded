import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_dashboard/recent_search_model.dart';
import 'constant.dart';
import 'recommended_job_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<RecommendedJobModel> recommendedJobs = [
    RecommendedJobModel('Flutter Mobile Developer', 'Google', 'Jakarta',
        'assets/flutter_logo.png', lightPurpleColor),
    RecommendedJobModel('AdobeXD Designer', 'Adobe', 'Batam',
        'assets/xd_logo.png', lightYellowColor),
    RecommendedJobModel('Flutter Frontend Developer', 'Daft.co', 'Malang',
        'assets/flutter_logo.png', lightGreenColor),
    RecommendedJobModel('AdobeXD UI/UX Designer', 'Adobe', 'Batam',
        'assets/xd_logo.png', lightYellowColor),
  ];

  final List<RecentSearchModel> recentSearches = [
    RecentSearchModel('Facebook, USA', lightGreenColor),
    RecentSearchModel('Amazon, Canada', Colors.redAccent.withOpacity(0.6)),
    RecentSearchModel('Netflix, France', Colors.blueAccent.withOpacity(0.6)),
    RecentSearchModel('Google, USA', Colors.yellowAccent.withOpacity(0.6)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                margin: EdgeInsets.symmetric(horizontal: 32),
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
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'Based on your profile',
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                padding: EdgeInsets.only(left: 24),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: recommendedJobs.length,
                    itemBuilder: (context, index) {
                      final String company =
                          recommendedJobs[index].companyName +
                              '\n' +
                              recommendedJobs[index].companyLocation;
                      return Stack(
                        children: [
                          Container(
                            width: 140,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: recommendedJobs[index].cardColor,
                                borderRadius: BorderRadius.circular(24)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  recommendedJobs[index].title,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: 'Avenir',
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  company,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: 'Avenir',
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                  recommendedJobs[index].jobImageSource),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text(
                  'Recent Searches',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Wrap(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Chip(
                        label: Text(recentSearches[index].company),
                        padding: EdgeInsets.all(4),
                        backgroundColor: recentSearches[index].cardColor,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: primaryColor,
                radius: 24,
                child: IconButton(
                  icon:
                      Image.asset('assets/home_icon.png', color: Colors.white),
                  onPressed: () {},
                ),
              ),
              IconButton(
                icon: Image.asset('assets/profile_icon.png'),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/search_icon.png'),
                onPressed: () {},
              ),
            ],
          ),
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
