import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,),
          //1st row
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height/4,
                    width: size.width,
                    child: Image.network(
                        fit: BoxFit.cover,
                        "https://i.pinimg.com/736x/27/a7/a8/27a7a8d3bf3f18083dd8da6ca7d0c64f.jpg"),
                  ),
                  Container(
                    height: size.height/4,
                    width: size.width,
                    color: Colors.black26,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.arrow_back,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.share,
                        size: 40,
                        color: Colors.white,),
                    ),
                  ),
                  Container(
                    height: size.height/4,
                    width: size.width,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.play_circle_fill_rounded,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}