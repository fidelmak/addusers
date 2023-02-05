import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Awesome App"),
          titleSpacing: 13.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle),
            ),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),

          elevation: 50.0,
          // color:Colors.blue,
        ),
        body: ListView(
          children: [
            CarouselSlider(
              items: [
                Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                          image: AssetImage("images/slide3.jpg"),
                          fit: BoxFit.cover),
                    )),
                Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                          image: AssetImage("images/slide2.jpg"),
                          fit: BoxFit.cover),
                    )),
                Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                          image: AssetImage("images/slide4.jpg"),
                          fit: BoxFit.cover),
                    )),
              ],
              options: CarouselOptions(
                height: 220.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 12 / 5,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 40),
                viewportFraction: 0.8,
              ),
            ),
            //new widget here
          ],
        ));
  }
}
