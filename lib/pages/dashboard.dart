import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [

          // =========================
          // HORIZONTAL BIG CARDS
          // =========================

          Row(
            children: [
              SizedBox(
                width: size.width,

                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                  child: Row(
                    children: [

                      // =========================
                      // FIRST CARD
                      // =========================

                      Stack(
                        children: [

                          Container(
                            margin: const EdgeInsets.all(15),
                            height: size.height / 4.5,
                            width: size.width / 1.2,

                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),

                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6ZQOrOq97Tea7VvQhv16ctPfRLpKK6LXuhoi33gu_NQ&s=10",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          // Dark overlay
                          Container(
                            margin: const EdgeInsets.all(15),
                            height: size.height / 4.5,
                            width: size.width / 1.2,

                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),

                          // Title
                          Positioned(
                            bottom: 45,
                            left: 30,

                            child: SizedBox(
                              width: size.width / 2,

                              child: const Text(
                                "Hello PCPS news channel. Happy Dashain",

                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),

                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),

                          // Date
                          Positioned(
                            bottom: 25,
                            left: 30,

                            child: const Text(
                              "07 Oct 2026",

                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),

                          // Play button
                          const Positioned(
                            bottom: 25,
                            right: 30,

                            child: Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ],
                      ),

                      // =========================
                      // SECOND CARD
                      // =========================

                      Stack(
                        children: [

                          Container(
                            margin: const EdgeInsets.all(15),
                            height: size.height / 4.5,
                            width: size.width / 1.2,

                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),

                              child: Image.network(
                                "https://i.pinimg.com/736x/27/a7/a8/27a7a8d3bf3f18083dd8da6ca7d0c64f.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          // Dark overlay
                          Container(
                            margin: const EdgeInsets.all(15),
                            height: size.height / 4.5,
                            width: size.width / 1.2,

                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),

                          // Title
                          Positioned(
                            bottom: 45,
                            left: 30,

                            child: SizedBox(
                              width: size.width / 2,

                              child: const Text(
                                "Hello PCPS news channel. Happy Dashain",

                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),

                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),

                          // Date
                          Positioned(
                            bottom: 25,
                            left: 30,

                            child: const Text(
                              "07 Oct 2026",

                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),

                          // Play button
                          const Positioned(
                            bottom: 25,
                            right: 30,

                            child: Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // =========================
          // SMALL VIDEO CARD
          // =========================

          Row(
            children: [

              Column(
                children: [
                  Stack(
                    children: [

                      Container(
                        margin: const EdgeInsets.all(15),
                        height: 100,
                        width: 100,

                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),

                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6ZQOrOq97Tea7VvQhv16ctPfRLpKK6LXuhoi33gu_NQ&s=10",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),


                      const Positioned(
                        top: 40,
                        left: 45,

                        child: Icon(
                          Icons.play_circle_fill,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ],

              ),
              Column(
                children: [
                  Text("hello pcps news channel happy smth"),
                  Row(
                    children: [
                      Container(
                        color: Colors.red,
                        padding: EdgeInsets.all(3),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15.0,top: 8,bottom: 8),
                          child: Text("BBC News",style: TextStyle(color: Colors.white),),

                        ),

                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}