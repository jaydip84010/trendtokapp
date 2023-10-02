import 'package:flutter/material.dart';

class LearningCenter extends StatefulWidget {
  @override
  _LearningCenterState createState() => _LearningCenterState();
}

class _LearningCenterState extends State<LearningCenter> {
  int selectedTabIndex = 0;
  int selectedItemIndexTab1 = 0;
  int selectedItemIndexTab2 = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.green,
                    size: 35,
                  ),
                ),
                Text(
                  'Learning Center',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(height: 50, width: 60),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff292928),
              alignment: Alignment.center,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Using TrendTalk To Grow On TikTok',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TabButton(
                  text: 'Section',
                  isSelected: selectedTabIndex == 0,
                  onPressed: () {
                    setState(() {
                      selectedTabIndex = 0;
                    });
                  },
                ),
                TabButton(
                  text: 'Materials',
                  isSelected: selectedTabIndex == 1,
                  onPressed: () {
                    setState(() {
                      selectedTabIndex = 1;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ScrollConfiguration(
                behavior: ScrollBehavior().copyWith(overscroll:false ),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    if (selectedTabIndex == 0) {
                      return TabListViewItem(
                        isSelected: index == selectedItemIndexTab1,
                        onTap: () {
                          setState(() {
                            selectedItemIndexTab1 = index;
                          });
                        },
                      );
                    } else {
                      return TabListViewItem(
                        isSelected: index == selectedItemIndexTab2,
                        onTap: () {
                          setState(() {
                            selectedItemIndexTab2 = index;
                          });
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  TabButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Color(0xff292928),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class TabListViewItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  TabListViewItem({
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,
        width: 300,
        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Color(0xff292928),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Subtitle',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
