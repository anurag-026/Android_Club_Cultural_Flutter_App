import 'package:flutter/material.dart';
import 'package:north_indian_culture/data/content.dart';
import 'colors.dart';
import 'style.dart';

class LocationDetail extends StatefulWidget {
  final String imagePath;
  const LocationDetail(this.imagePath, {super.key});

  @override
  _LocationDetailState createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return LocationPage(
      controller: _controller,
      imagePath: widget.imagePath,
    );
  }
}

class LocationPage extends StatelessWidget {
  final imagePath;
  LocationPage({key, required AnimationController controller, this.imagePath})
      : animation = LocationDetailPageEnterAnimation(controller),
        super(key: key);
  final LocationDetailPageEnterAnimation animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation.controller,
      builder: (context, child) => _buildAnimation(context),
    );
  }

  Hero _buildAnimation(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    int index = description.indexWhere((map) => map['imagePath'] == imagePath);
    if (index < 0) index = 0;

    return Hero(
      tag: imagePath,
      child: Scaffold(
          body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => {Navigator.pop(context)},
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white70,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: animation.barHeight.value,
                  width: width,
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColor.secondaryColor,
                        AppColor.tertiaryColor,
                      ],
                    ),
                  ),
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                              text: (description[index]['cat'] == 'state')
                                  ? description[index]['placeName']
                                  : '',
                              size: 24),
                          const SizedBox(height: 10),
                          PrimaryText(
                              text: (description[index]['cat'] == 'state')
                                  ? description[index]['Culture']
                                  : '',
                              size: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white38),
                          const SizedBox(height: 30),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 160,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                locationCard('assets/Varanasi.jpeg', 'Varanasi',
                                    '', context),
                                locationCard('assets/clothing/UP.jpeg',
                                    'Clothes', '', context),
                                locationCard('assets/clothing/UP.jpeg',
                                    'Uttar Pradesh', '', context),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget locationCard(String imagePath, String placeName,
      String touristPlaceCount, BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LocationDetail(imagePath)))
      },
      child: Stack(children: [
        Container(
          height: 160,
          width: 160,
          margin: const EdgeInsets.only(right: 25),
          padding: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent]),
            ),
          ),
        ),
      ]),
    );
  }
}

class LocationDetailPageEnterAnimation {
  LocationDetailPageEnterAnimation(this.controller)
      : barHeight = Tween<double>(begin: 0, end: 600).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0, 0.5),
          ),
        );

  final AnimationController controller;
  final Animation<double> barHeight;
}
