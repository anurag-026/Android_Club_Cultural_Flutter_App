import 'package:flutter/material.dart';
import '../widget/appBar.dart';
import '../widget/card.dart';
import '../widget/colors.dart';
import '../data/content.dart';
import '../widget/style.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      //Floating Button
      floatingActionButton: Container(
          width:  80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.darkSecondaryColor,
                AppColor.lightTertiaryColor,
              ],
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.home,
                    color: AppColor.primaryColor,
                    size: 40,
                  ),
                  onPressed: null),
             
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      //Body
      body: Container(
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
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
            //AppBar
            customAppBar(),
            //Highlight Card
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: highlights.length,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                        child: highlightCard(
                            context, highlights[index]['imagePath']),
                      )),
            ),
            const SizedBox(height: 30),
            //State tiles Heading
            const Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(
                    text: 'States ',
                    size: 24,
                  ),
                  //PrimaryText(text: 'More', size: 16, color: Colors.white24),
                ],
              ),
            ),
            //State tiles
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: states.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                  child: Center(
                    child: smalltileCard(
                      states[index]['imagePath'],
                      states[index]['placeName'],
                      context,
                    ),
                  ),
                ),
              ),
            ),
            //Add on home Screen
            const SizedBox(height: 30),
            const Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(
                    text: 'Traditional clothing ',
                    size: 24,
                  ),
                  //PrimaryText(text: 'More', size: 16, color: Colors.white24),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: clothing.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                  child: Center(
                    child: smalltileCard(
                      clothing[index]['imagePath'],
                      clothing[index]['placeName'],
                      context,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
            const Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 30),
              child: Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryText(
                      text: 'Ministry of Culture Organisation ',
                      size: 24,
                      
                      
                    ),
                    //PrimaryText(text: 'More', size: 16, color: Colors.white24),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ministry.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                  child: Center(
                    child: smalltileCardwSub(
                      ministry[index]['imagePath'],
                      ministry[index]['name'],
                      ministry[index]['location'],
                      context,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
