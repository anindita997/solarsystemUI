import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:responsive_app/data.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 44,
                      ),
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Solar System",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.lightGreenAccent,
                              fontSize: 26,
                            ),
                            // textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                      icon: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset("assets/drop_down_icon.png"),
                      ),
                      underline: SizedBox(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500.0,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Swiper(
                    itemCount: planets.length,
                    itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                    layout: SwiperLayout.STACK,
                    pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                      activeSize: 12,
                      space: 8,
                      activeColor: Colors.redAccent,
                    )),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 70.0,
                              ),
                              Card(
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 120.0,
                                      ),
                                      Text(
                                        planets[index].name,
                                        style: TextStyle(
                                            fontSize: 44,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "Solar System",
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.cyan,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 32.0,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Know more",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.red,
                                                fontWeight: FontWeight.w700),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.blue,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(planets[index].iconImage)
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.dashboard),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
