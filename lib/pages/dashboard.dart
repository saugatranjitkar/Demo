import 'package:flutter/material.dart';
import '../pages/detailpage.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  horizontallistcard(size, title, url, date){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => detailpage(),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: size.height/4.5,
            width: size.width/1.2,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(url
                  ,fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: size.height/4.5,
            width: size.width/1.2,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            bottom: 45,
            left: 30,
            child: Container(
              width: size.width/2,
              child: Text(title,
                style: TextStyle(color: Colors.indigo, fontSize: 14),
                maxLines: 2, overflow: TextOverflow.ellipsis,),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 30,
            child: Container(
              width: size.width/2,
              child: Text(date,
                style: TextStyle(color: Colors.indigo, fontSize: 14),
                maxLines: 1, overflow: TextOverflow.ellipsis,),
            ),
          ),
          Positioned(
            bottom: 25,
            right: 30,
            child: Icon(Icons.play_circle_fill,
              color: Colors.white,
              size: 40,
            ),
          )



        ],
      ),
    );
  }

  verticallistcard(size, String title, url, date, source){
    return Row(
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
                      url, fit: BoxFit.cover,
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
        Container(
          height: size.height/10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: size.width/1.6,
                  child: Text(title,maxLines: 2,overflow: TextOverflow.ellipsis,)),

              Container(
                width: size.width/1.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      padding: EdgeInsets.all(3),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0,top: 8,bottom: 8),
                        child: Text(source,style: TextStyle(color: Colors.white),),

                      ),

                    ),
                    Text(date),

                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //horizontal list
          Row(
            children: [
              Container(
                width: size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      horizontallistcard(size,
                          "Hello PCPC news",
                          "https://i.pinimg.com/736x/27/a7/a8/27a7a8d3bf3f18083dd8da6ca7d0c64f.jpg",
                          "10 OCT 2026"),
                      horizontallistcard(size,
                          "Hello PCPC news",
                          "https://i.pinimg.com/736x/f1/7f/cd/f17fcd28284a9e8971d17c7770b84e58.jpg",
                          "11 OCT 2026"),
                      horizontallistcard(size,
                          "Hello PCPC news",
                          "https://i.pinimg.com/736x/2d/33/d9/2d33d9be0d47db698f2a61fd63ba2a5f.jpg",
                          "12 OCT 2026"),
                    ],
                  ),
                ),
              )
            ],
          ),

          //Vertical list
          Container(
            height: size.height/1.87,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticallistcard(size, "Hello PCPS news channel",
                      "https://i.pinimg.com/736x/27/a7/a8/27a7a8d3bf3f18083dd8da6ca7d0c64f.jpg",
                      "10 OCT 2026",
                      "PCPS College"
                  ),
                  verticallistcard(size, "Hello PCPS news channel",
                      "https://i.pinimg.com/1200x/0a/33/37/0a333795776ea447f542d652977a07ff.jpg",
                      "10 OCT 2026",
                      "PCPS College"
                  ),
                  verticallistcard(size, "Hello PCPS news channel",
                      "https://i.pinimg.com/1200x/3e/04/d3/3e04d3e5e59cfcb10d19bfe4d95f5795.jpg",
                      "10 OCT 2026",
                      "PCPS College"
                  ),
                  verticallistcard(size, "Hello PCPS news channel",
                      "https://i.pinimg.com/736x/14/ea/7a/14ea7a7956e2cf6ca0c2e7501970742a.jpg",
                      "10 OCT 2026",
                      "PCPS College"
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}