import 'package:flutter/material.dart';
import 'package:seas/pages/dashboard.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
            ),

            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text("hello hahahha",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis,),maxLines: 2,)),
                Container(
                  width: size.width/1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("10 OCT 2026",style: TextStyle(color: Colors.grey),),
                      Text("PCPS College",style: TextStyle(color: Colors.grey),)

                    ],
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.all(15),
            child: Text("hello every one happy dashain""huhuhuhuhuhuhehehehhe",style: TextStyle(fontSize: 18,
        fontWeight: FontWeight.normal,
        overflow: TextOverflow.visible,),)),

            Padding(padding: const EdgeInsets.only(left: 15.0,right: 15),
            child: Divider(),),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Related vedios",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis,),maxLines: 2,)),
                  ],
                ),
              dashboardState.  verticallistcard(size, "Hello PCPS news channel",
                       "https://i.pinimg.com/736x/27/a7/a8/27a7a8d3bf3f18083dd8da6ca7d0c64f.jpg",
                        "10 OCT 2026",
                        "PCPS College"
               ),
                dashboardState.verticallistcard(size, "Hello PCPS news channel",
                    "https://i.pinimg.com/1200x/0a/33/37/0a333795776ea447f542d652977a07ff.jpg",
                    "10 OCT 2026",
                    "PCPS College"
                ),
                dashboardState. verticallistcard(size, "Hello PCPS news channel",
                    "https://i.pinimg.com/1200x/3e/04/d3/3e04d3e5e59cfcb10d19bfe4d95f5795.jpg",
                    "10 OCT 2026",
                    "PCPS College"
                ),
                dashboardState.verticallistcard(size, "Hello PCPS news channel",
                    "https://i.pinimg.com/736x/14/ea/7a/14ea7a7956e2cf6ca0c2e7501970742a.jpg",
                    "10 OCT 2026",
                    "PCPS College"
                )
            ],
            )
          ],
        ),
      ),
    );
  }
}