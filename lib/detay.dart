import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({this.imgPath});
  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/dress.jpg",
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LAMINATED",
                              style: TextStyle(
                                  fontFamily: "ElYazi",
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Louis Vuitton",
                              style: TextStyle(
                                  fontFamily: "ElYazi",
                                  fontSize: 16,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width - 162,
                              child: Text(
                                "One button V-neck sling long-sleeved waist female stitching dress",
                                style: TextStyle(
                                    fontFamily: "ElYazi",
                                    fontSize: 13,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$6500",
                            style:
                                TextStyle(fontFamily: "ElYazi", fontSize: 22),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: Container(
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                              backgroundColor: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "LAMINATED",
                      style: TextStyle(
                          fontFamily: "ElYazi",
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,),
                ],
              ),
            ),
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
          ),
        ],
      ),
    );
  }
}
