import 'package:e_commerce_servicelo/HomePage/all_tasks.dart';    //Home Page Folder
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'WelcomeCarousal/carousal.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late List<Widget> carousalList;
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
    carousalList = [
      const GeneralCarousal(
        imgPath: 'assets/images/provider.jpg',
        titleText: 'Post Your Task',
        description: 'Tell us what you need It is Free to Post',
      ),
      const GeneralCarousal(
        imgPath: 'assets/images/provider.jpg',
        titleText: 'Hire the right Tasker',
        description: 'Choose the right person for the tast',
      ),
      const GeneralCarousal(
        imgPath: 'assets/images/provider.jpg',
        titleText: 'Review offers',
        description: 'Receive Offers from trusted Taskers',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Welcome To ', style: TextStyle(fontSize: 20)),
            Text(
              'ServiceLo Pakistan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),

        //Carousal
        CarouselSlider(
          options: CarouselOptions(
            height: height * 0.55,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            //aspectRatio: 2.0,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlay: true,
          ),
          items: [
            0,
            1,
            2,
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return carousalList[i];
              },
            );
          }).toList(),
        ),

        //Row to Show Indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: carousalList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),

        //Submit Button
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllTasks()),
            );
          },
          child: const Text('Get Started'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            fixedSize: MaterialStateProperty.all(Size.fromWidth(width * 0.7)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
